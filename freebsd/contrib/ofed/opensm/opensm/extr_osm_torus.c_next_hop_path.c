
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {struct t_switch**** sw; } ;
struct t_switch {size_t i; size_t j; size_t k; } ;


 int ring_dir_path (struct torus*,unsigned int,struct t_switch*,struct t_switch*) ;

__attribute__((used)) static
bool next_hop_path(struct torus *t, unsigned cdir,
     struct t_switch *ssw, struct t_switch *dsw,
     unsigned *pt_grp)
{
 struct t_switch *tsw = ((void*)0);
 bool success = 0;
 int d;





 switch (cdir) {
 case 0:
  tsw = t->sw[dsw->i][ssw->j][ssw->k];
  break;
 case 1:
  tsw = t->sw[ssw->i][dsw->j][ssw->k];
  break;
 case 2:
  tsw = t->sw[ssw->i][ssw->j][dsw->k];
  break;
 default:
  goto out;
 }
 if (tsw) {
  d = ring_dir_path(t, cdir, ssw, tsw);
  cdir *= 2;
  if (d > 0)
   *pt_grp = cdir + 1;
  else if (d < 0)
   *pt_grp = cdir;
  else
   goto out;
  success = 1;
 }
out:
 return success;
}
