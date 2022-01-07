
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* uset ;
struct TYPE_6__ {int edom; } ;
struct block {int level; TYPE_3__ ef; TYPE_3__ et; struct block* link; } ;
struct TYPE_5__ {int* all_edge_sets; int n_edges; int edgewords; struct block** levels; } ;
typedef TYPE_1__ opt_state_t ;


 int memset (int ,int ,int) ;
 int propedom (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static void
find_edom(opt_state_t *opt_state, struct block *root)
{
 int i;
 uset x;
 struct block *b;

 x = opt_state->all_edge_sets;
 for (i = opt_state->n_edges * opt_state->edgewords; --i >= 0; )
  x[i] = 0xFFFFFFFFU;


 memset(root->et.edom, 0, opt_state->edgewords * sizeof(*(uset)0));
 memset(root->ef.edom, 0, opt_state->edgewords * sizeof(*(uset)0));
 for (i = root->level; i >= 0; --i) {
  for (b = opt_state->levels[i]; b != 0; b = b->link) {
   propedom(opt_state, &b->et);
   propedom(opt_state, &b->ef);
  }
 }
}
