
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_bitmap {int avail; } ;



__attribute__((used)) static int bitmap_avail(struct mlx5_bitmap *bitmap)
{
 return bitmap->avail;
}
