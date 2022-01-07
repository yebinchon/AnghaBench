
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int *** sw; int y_sz; int x_sz; } ;


 int canonicalize (int,int ) ;
 scalar_t__ install_tswitch (struct torus*,int,int,int,int ) ;
 int log_no_perp (struct torus*,int,int,int,int,int,int,int) ;
 scalar_t__ safe_x_perpendicular (struct torus*,int,int,int) ;
 int tfind_2d_perpendicular (int ,int ,int ) ;

__attribute__((used)) static
bool handle_case_0x30a(struct torus *t, int i, int j, int k)
{
 int im1 = canonicalize(i - 1, t->x_sz);
 int ip1 = canonicalize(i + 1, t->x_sz);
 int jp1 = canonicalize(j + 1, t->y_sz);

 if (safe_x_perpendicular(t, i, j, k) &&
     install_tswitch(t, ip1, j, k,
       tfind_2d_perpendicular(t->sw[i][jp1][k],
         t->sw[i][j][k],
         t->sw[im1][j][k]))) {
  return 1;
 }
 log_no_perp(t, 0x30a, i, j, k, i, j, k);

 if (safe_x_perpendicular(t, i, jp1, k) &&
     install_tswitch(t, ip1, jp1, k,
       tfind_2d_perpendicular(t->sw[i][j][k],
         t->sw[i][jp1][k],
         t->sw[im1][jp1][k]))) {
  return 1;
 }
 log_no_perp(t, 0x30a, i, j, k, i, jp1, k);
 return 0;
}
