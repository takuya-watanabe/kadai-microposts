class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: { on_delete: :cascade }
      t.references :micropost, foreign_key: { on_delete: :cascade }

      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
