
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t_switch {unsigned int i; unsigned int j; unsigned int k; TYPE_1__* torus; } ;
struct TYPE_2__ {unsigned int x_sz; unsigned int y_sz; unsigned int z_sz; } ;


 int grow_master_stree_branch (struct t_switch*,struct t_switch*,unsigned int,unsigned int) ;
 struct t_switch* ring_next_sw (struct t_switch*,int,int) ;
 int sw_in_master_stree (struct t_switch*) ;

__attribute__((used)) static
void build_master_stree_branch(struct t_switch *branch_root, int cdir)
{
 struct t_switch *sw, *n_sw, *p_sw;
 unsigned l, idx, cnt, pg, ng;

 switch (cdir) {
 case 0:
  idx = branch_root->i;
  cnt = branch_root->torus->x_sz;
  break;
 case 1:
  idx = branch_root->j;
  cnt = branch_root->torus->y_sz;
  break;
 case 2:
  idx = branch_root->k;
  cnt = branch_root->torus->z_sz;
  break;
 default:
  goto out;
 }






 n_sw = branch_root;
 ng = 2 * cdir;
 p_sw = branch_root;
 pg = 2 * cdir + 1;

 for (l = idx; n_sw && l >= 1; l--) {
  sw = ring_next_sw(n_sw, cdir, -1);
  if (sw && !sw_in_master_stree(sw)) {
   grow_master_stree_branch(n_sw, sw, pg, ng);
   n_sw = sw;
  } else
   n_sw = ((void*)0);
 }
 for (l = idx; p_sw && l < (cnt - 1); l++) {
  sw = ring_next_sw(p_sw, cdir, 1);
  if (sw && !sw_in_master_stree(sw)) {
   grow_master_stree_branch(p_sw, sw, ng, pg);
   p_sw = sw;
  } else
   p_sw = ((void*)0);
 }
 if (n_sw && p_sw)
  goto out;





 for (l = 0; l < cnt; l++) {
  if (n_sw) {
   sw = ring_next_sw(n_sw, cdir, -1);
   if (sw && !sw_in_master_stree(sw)) {
    grow_master_stree_branch(n_sw, sw, pg, ng);
    n_sw = sw;
   } else
    n_sw = ((void*)0);
  }
  if (p_sw) {
   sw = ring_next_sw(p_sw, cdir, 1);
   if (sw && !sw_in_master_stree(sw)) {
    grow_master_stree_branch(p_sw, sw, ng, pg);
    p_sw = sw;
   } else
    p_sw = ((void*)0);
  }
  if (!(n_sw || p_sw))
   break;
 }
out:
 return;
}
