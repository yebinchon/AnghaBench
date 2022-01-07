
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int *** sw; int y_sz; int x_sz; } ;


 int canonicalize (int,int ) ;
 scalar_t__ install_tswitch (struct torus*,int,int,int,int ) ;
 int log_no_crnr (struct torus*,int,int,int,int,int,int,int) ;
 int tfind_face_corner (int ,int ,int ) ;

__attribute__((used)) static
bool handle_case_0x308(struct torus *t, int i, int j, int k)
{
 int ip1 = canonicalize(i + 1, t->x_sz);
 int jp1 = canonicalize(j + 1, t->y_sz);

 if (install_tswitch(t, ip1, jp1, k,
       tfind_face_corner(t->sw[ip1][j][k],
           t->sw[i][j][k],
           t->sw[i][jp1][k]))) {
  return 1;
 }
 log_no_crnr(t, 0x308, i, j, k, ip1, jp1, k);
 return 0;
}
