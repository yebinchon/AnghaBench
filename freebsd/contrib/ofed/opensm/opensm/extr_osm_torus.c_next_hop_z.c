
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;
struct t_switch {int dummy; } ;


 int next_hop_path (struct torus*,int,struct t_switch*,struct t_switch*,unsigned int*) ;

__attribute__((used)) static
bool next_hop_z(struct torus *t,
  struct t_switch *ssw, struct t_switch *dsw, unsigned *pt_grp)
{
 return next_hop_path(t, 2, ssw, dsw, pt_grp);
}
