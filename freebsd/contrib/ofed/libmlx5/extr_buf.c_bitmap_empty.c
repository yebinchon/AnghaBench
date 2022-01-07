
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_bitmap {scalar_t__ avail; scalar_t__ max; } ;



__attribute__((used)) static int bitmap_empty(struct mlx5_bitmap *bitmap)
{
 return (bitmap->avail == bitmap->max) ? 1 : 0;
}
