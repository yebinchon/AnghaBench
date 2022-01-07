
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int x_sz; int y_sz; struct t_switch**** sw; } ;
struct t_switch {int dummy; } ;


 int canonicalize (int,int) ;
 scalar_t__ good_xy_ring (struct torus*,int,int,int const) ;

__attribute__((used)) static
struct t_switch *find_plane_mid(struct torus *t, const int z)
{
 int x, dx, xm = t->x_sz / 2;
 int y, dy, ym = t->y_sz / 2;
 struct t_switch ****sw = t->sw;

 if (good_xy_ring(t, xm, ym, z))
  return sw[xm][ym][z];

 for (dx = 1, dy = 1; dx <= xm && dy <= ym; dx++, dy++) {

  x = canonicalize(xm - dx, t->x_sz);
  y = canonicalize(ym - dy, t->y_sz);
  if (good_xy_ring(t, x, y, z))
   return sw[x][y][z];

  x = canonicalize(xm + dx, t->x_sz);
  y = canonicalize(ym + dy, t->y_sz);
  if (good_xy_ring(t, x, y, z))
   return sw[x][y][z];
 }
 return ((void*)0);
}
