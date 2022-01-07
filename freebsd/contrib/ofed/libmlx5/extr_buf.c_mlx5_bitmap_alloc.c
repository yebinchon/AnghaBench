
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_bitmap {int max; int last; int top; int avail; int table; } ;


 int mlx5_find_first_zero_bit (int ,int) ;
 int mlx5_set_bit (int,int ) ;

__attribute__((used)) static int mlx5_bitmap_alloc(struct mlx5_bitmap *bitmap)
{
 uint32_t obj;
 int ret;

 obj = mlx5_find_first_zero_bit(bitmap->table, bitmap->max);
 if (obj < bitmap->max) {
  mlx5_set_bit(obj, bitmap->table);
  bitmap->last = (obj + 1);
  if (bitmap->last == bitmap->max)
   bitmap->last = 0;
  obj |= bitmap->top;
  ret = obj;
 } else
  ret = -1;

 if (ret != -1)
  --bitmap->avail;

 return ret;
}
