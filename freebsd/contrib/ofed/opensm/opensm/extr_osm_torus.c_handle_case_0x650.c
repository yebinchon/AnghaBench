
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int *** sw; int z_sz; int y_sz; } ;


 int canonicalize (int,int ) ;
 scalar_t__ install_tswitch (struct torus*,int,int,int,int ) ;
 int log_no_perp (struct torus*,int,int,int,int,int,int,int) ;
 scalar_t__ safe_z_perpendicular (struct torus*,int,int,int) ;
 int tfind_2d_perpendicular (int ,int ,int ) ;

__attribute__((used)) static
bool handle_case_0x650(struct torus *t, int i, int j, int k)
{
 int jp1 = canonicalize(j + 1, t->y_sz);
 int km1 = canonicalize(k - 1, t->z_sz);
 int kp1 = canonicalize(k + 1, t->z_sz);

 if (safe_z_perpendicular(t, i, j, k) &&
     install_tswitch(t, i, j, kp1,
       tfind_2d_perpendicular(t->sw[i][jp1][k],
         t->sw[i][j][k],
         t->sw[i][j][km1]))) {
  return 1;
 }
 log_no_perp(t, 0x650, i, j, k, i, j, k);

 if (safe_z_perpendicular(t, i, jp1, k) &&
     install_tswitch(t, i, jp1, kp1,
       tfind_2d_perpendicular(t->sw[i][j][k],
         t->sw[i][jp1][k],
         t->sw[i][jp1][km1]))) {
  return 1;
 }
 log_no_perp(t, 0x650, i, j, k, i, jp1, k);
 return 0;
}
