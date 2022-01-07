
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {struct t_switch**** sw; } ;
struct t_switch {int i; int j; int k; } ;
struct f_switch {int dummy; } ;


 struct t_switch* alloc_tswitch (struct torus*,struct f_switch*) ;

__attribute__((used)) static
bool install_tswitch(struct torus *t,
       int i, int j, int k, struct f_switch *fsw)
{
 struct t_switch **sw = &t->sw[i][j][k];

 if (!*sw)
  *sw = alloc_tswitch(t, fsw);

 if (*sw) {
  (*sw)->i = i;
  (*sw)->j = j;
  (*sw)->k = k;
 }
 return !!*sw;
}
