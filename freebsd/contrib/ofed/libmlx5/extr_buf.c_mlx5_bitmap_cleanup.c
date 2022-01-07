
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_bitmap {scalar_t__ table; } ;


 int free (scalar_t__) ;

__attribute__((used)) static void mlx5_bitmap_cleanup(struct mlx5_bitmap *bitmap)
{
 if (bitmap->table)
  free(bitmap->table);
}
