
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block {int level; int out_use; int in_use; int kill; struct block* link; } ;
struct TYPE_5__ {struct block** levels; } ;
typedef TYPE_1__ opt_state_t ;
struct TYPE_7__ {int in_use; } ;
struct TYPE_6__ {int in_use; } ;


 TYPE_4__* JF (struct block*) ;
 TYPE_3__* JT (struct block*) ;
 int compute_local_ud (struct block*) ;

__attribute__((used)) static void
find_ud(opt_state_t *opt_state, struct block *root)
{
 int i, maxlevel;
 struct block *p;





 maxlevel = root->level;
 for (i = maxlevel; i >= 0; --i)
  for (p = opt_state->levels[i]; p; p = p->link) {
   compute_local_ud(p);
   p->out_use = 0;
  }

 for (i = 1; i <= maxlevel; ++i) {
  for (p = opt_state->levels[i]; p; p = p->link) {
   p->out_use |= JT(p)->in_use | JF(p)->in_use;
   p->in_use |= p->out_use &~ p->kill;
  }
 }
}
