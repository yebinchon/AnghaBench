
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int *** sw; int z_sz; int y_sz; int x_sz; } ;


 int canonicalize (int,int ) ;
 scalar_t__ install_tswitch (struct torus*,int,int,int,int ) ;
 int log_no_perp (struct torus*,int,int,int,int,int,int,int) ;
 scalar_t__ safe_x_perpendicular (struct torus*,int,int,int) ;
 int tfind_3d_perpendicular (int ,int ,int ,int ) ;

__attribute__((used)) static
bool handle_case_0x7ea(struct torus *t, int i, int j, int k)
{
 int im1 = canonicalize(i - 1, t->x_sz);
 int ip1 = canonicalize(i + 1, t->x_sz);
 int jp1 = canonicalize(j + 1, t->y_sz);
 int kp1 = canonicalize(k + 1, t->z_sz);

 if (safe_x_perpendicular(t, i, j, k) &&
     install_tswitch(t, ip1, j, k,
       tfind_3d_perpendicular(t->sw[i][j][kp1],
         t->sw[i][j][k],
         t->sw[i][jp1][k],
         t->sw[im1][j][k]))) {
  return 1;
 }
 log_no_perp(t, 0x7ea, i, j, k, i, j, k);
 return 0;
}
