
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int z_sz; int flags; scalar_t__*** sw; } ;


 int Z_MESH ;
 int canonicalize (int,int) ;
 scalar_t__ link_tswitches (struct torus*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static
bool safe_z_ring(struct torus *t, int i, int j, int k)
{
 int km1, kp1, kp2;
 bool success = 1;
 if (t->z_sz != 4 || t->flags & Z_MESH)
  goto out;

 km1 = canonicalize(k - 1, t->z_sz);
 kp1 = canonicalize(k + 1, t->z_sz);
 kp2 = canonicalize(k + 2, t->z_sz);

 if (!!t->sw[i][j][km1] +
     !!t->sw[i][j][kp1] + !!t->sw[i][j][kp2] < 2) {
  success = 0;
  goto out;
 }
 if (t->sw[i][j][kp2] && t->sw[i][j][km1])
  success = link_tswitches(t, 2,
      t->sw[i][j][kp2],
      t->sw[i][j][km1])
   && success;

 if (t->sw[i][j][km1] && t->sw[i][j][k])
  success = link_tswitches(t, 2,
      t->sw[i][j][km1],
      t->sw[i][j][k])
   && success;

 if (t->sw[i][j][k] && t->sw[i][j][kp1])
  success = link_tswitches(t, 2,
      t->sw[i][j][k],
      t->sw[i][j][kp1])
   && success;

 if (t->sw[i][j][kp1] && t->sw[i][j][kp2])
  success = link_tswitches(t, 2,
      t->sw[i][j][kp1],
      t->sw[i][j][kp2])
   && success;
out:
 return success;
}
