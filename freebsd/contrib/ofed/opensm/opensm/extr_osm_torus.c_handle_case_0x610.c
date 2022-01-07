
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int *** sw; int z_sz; int y_sz; } ;


 int canonicalize (int,int ) ;
 scalar_t__ install_tswitch (struct torus*,int,int,int,int ) ;
 int log_no_crnr (struct torus*,int,int,int,int,int,int,int) ;
 int tfind_face_corner (int ,int ,int ) ;

__attribute__((used)) static
bool handle_case_0x610(struct torus *t, int i, int j, int k)
{
 int jp1 = canonicalize(j + 1, t->y_sz);
 int kp1 = canonicalize(k + 1, t->z_sz);

 if (install_tswitch(t, i, j, kp1,
       tfind_face_corner(t->sw[i][j][k],
           t->sw[i][jp1][k],
           t->sw[i][jp1][kp1]))) {
  return 1;
 }
 log_no_crnr(t, 0x610, i, j, k, i, j, kp1);
 return 0;
}
