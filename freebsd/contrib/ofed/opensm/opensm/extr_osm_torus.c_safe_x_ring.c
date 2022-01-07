
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int x_sz; int flags; scalar_t__*** sw; } ;


 int X_MESH ;
 int canonicalize (int,int) ;
 scalar_t__ link_tswitches (struct torus*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static
bool safe_x_ring(struct torus *t, int i, int j, int k)
{
 int im1, ip1, ip2;
 bool success = 1;
 if (t->x_sz != 4 || t->flags & X_MESH)
  goto out;

 im1 = canonicalize(i - 1, t->x_sz);
 ip1 = canonicalize(i + 1, t->x_sz);
 ip2 = canonicalize(i + 2, t->x_sz);

 if (!!t->sw[im1][j][k] +
     !!t->sw[ip1][j][k] + !!t->sw[ip2][j][k] < 2) {
  success = 0;
  goto out;
 }
 if (t->sw[ip2][j][k] && t->sw[im1][j][k])
  success = link_tswitches(t, 0,
      t->sw[ip2][j][k],
      t->sw[im1][j][k])
   && success;

 if (t->sw[im1][j][k] && t->sw[i][j][k])
  success = link_tswitches(t, 0,
      t->sw[im1][j][k],
      t->sw[i][j][k])
   && success;

 if (t->sw[i][j][k] && t->sw[ip1][j][k])
  success = link_tswitches(t, 0,
      t->sw[i][j][k],
      t->sw[ip1][j][k])
   && success;

 if (t->sw[ip1][j][k] && t->sw[ip2][j][k])
  success = link_tswitches(t, 0,
      t->sw[ip1][j][k],
      t->sw[ip2][j][k])
   && success;
out:
 return success;
}
