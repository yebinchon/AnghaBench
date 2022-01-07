
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int z_sz; int y_sz; int x_sz; struct t_switch**** sw; } ;
struct t_switch {int dummy; } ;


 int canonicalize (int,int ) ;
 int link_tswitches (struct torus*,int,struct t_switch*,struct t_switch*) ;

__attribute__((used)) static
void check_tlinks(struct torus *t, int i, int j, int k)
{
 struct t_switch ****sw = t->sw;
 int ip1 = canonicalize(i + 1, t->x_sz);
 int jp1 = canonicalize(j + 1, t->y_sz);
 int kp1 = canonicalize(k + 1, t->z_sz);






 if (sw[i][j][k] && sw[ip1][j][k])
  link_tswitches(t, 0, sw[i][j][k], sw[ip1][j][k]);

 if (sw[i][jp1][k] && sw[ip1][jp1][k])
  link_tswitches(t, 0, sw[i][jp1][k], sw[ip1][jp1][k]);

 if (sw[i][j][kp1] && sw[ip1][j][kp1])
  link_tswitches(t, 0, sw[i][j][kp1], sw[ip1][j][kp1]);

 if (sw[i][jp1][kp1] && sw[ip1][jp1][kp1])
  link_tswitches(t, 0, sw[i][jp1][kp1], sw[ip1][jp1][kp1]);


 if (sw[i][j][k] && sw[i][jp1][k])
  link_tswitches(t, 1, sw[i][j][k], sw[i][jp1][k]);

 if (sw[ip1][j][k] && sw[ip1][jp1][k])
  link_tswitches(t, 1, sw[ip1][j][k], sw[ip1][jp1][k]);

 if (sw[i][j][kp1] && sw[i][jp1][kp1])
  link_tswitches(t, 1, sw[i][j][kp1], sw[i][jp1][kp1]);

 if (sw[ip1][j][kp1] && sw[ip1][jp1][kp1])
  link_tswitches(t, 1, sw[ip1][j][kp1], sw[ip1][jp1][kp1]);


 if (sw[i][j][k] && sw[i][j][kp1])
  link_tswitches(t, 2, sw[i][j][k], sw[i][j][kp1]);

 if (sw[ip1][j][k] && sw[ip1][j][kp1])
  link_tswitches(t, 2, sw[ip1][j][k], sw[ip1][j][kp1]);

 if (sw[i][jp1][k] && sw[i][jp1][kp1])
  link_tswitches(t, 2, sw[i][jp1][k], sw[i][jp1][kp1]);

 if (sw[ip1][jp1][k] && sw[ip1][jp1][kp1])
  link_tswitches(t, 2, sw[ip1][jp1][k], sw[ip1][jp1][kp1]);
}
