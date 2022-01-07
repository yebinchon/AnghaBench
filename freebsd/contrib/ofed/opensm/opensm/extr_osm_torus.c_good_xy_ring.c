
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int x_sz; int y_sz; struct t_switch**** sw; } ;
struct t_switch {int dummy; } ;



__attribute__((used)) static
bool good_xy_ring(struct torus *t, const int x, const int y, const int z)
{
 struct t_switch ****sw = t->sw;
 bool good_ring = 1;
 int x_tst, y_tst;

 for (x_tst = 0; x_tst < t->x_sz && good_ring; x_tst++)
  good_ring = sw[x_tst][y][z];

 for (y_tst = 0; y_tst < t->y_sz && good_ring; y_tst++)
  good_ring = sw[x][y_tst][z];

 return good_ring;
}
