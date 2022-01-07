
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct block {int level; int ef; int et; struct block* link; } ;
struct TYPE_5__ {int n_blocks; struct block** levels; TYPE_1__** blocks; } ;
typedef TYPE_2__ opt_state_t ;
struct TYPE_4__ {scalar_t__ in_edges; } ;


 int JF (struct block*) ;
 int JT (struct block*) ;
 int link_inedge (int *,int ) ;

__attribute__((used)) static void
find_inedges(opt_state_t *opt_state, struct block *root)
{
 int i;
 struct block *b;

 for (i = 0; i < opt_state->n_blocks; ++i)
  opt_state->blocks[i]->in_edges = 0;





 for (i = root->level; i > 0; --i) {
  for (b = opt_state->levels[i]; b != 0; b = b->link) {
   link_inedge(&b->et, JT(b));
   link_inedge(&b->ef, JF(b));
  }
 }
}
