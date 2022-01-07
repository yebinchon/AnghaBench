
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;


 scalar_t__ safe_y_ring (struct torus*,int,int,int) ;
 scalar_t__ safe_z_ring (struct torus*,int,int,int) ;

__attribute__((used)) static
bool safe_x_perpendicular(struct torus *t, int i, int j, int k)
{
 return safe_y_ring(t, i, j, k) && safe_z_ring(t, i, j, k);
}
