
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_bitmap {int max; int top; int mask; int avail; int last; int table; } ;


 int min (int ,int) ;
 int mlx5_clear_bit (int,int ) ;

__attribute__((used)) static void bitmap_free_range(struct mlx5_bitmap *bitmap, uint32_t obj,
         int cnt)
{
 int i;

 obj &= bitmap->max - 1;

 for (i = 0; i < cnt; i++)
  mlx5_clear_bit(obj + i, bitmap->table);
 bitmap->last = min(bitmap->last, obj);
 bitmap->top = (bitmap->top + bitmap->max) & bitmap->mask;
 bitmap->avail += cnt;
}
