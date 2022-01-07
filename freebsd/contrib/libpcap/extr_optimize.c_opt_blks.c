
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct icode {TYPE_8__* root; } ;
struct block {struct block* link; int ef; int et; } ;
struct TYPE_10__ {struct block** levels; } ;
typedef TYPE_1__ opt_state_t ;
typedef int compiler_state_t ;
struct TYPE_11__ {int level; } ;


 int and_pullup (TYPE_1__*,struct block*) ;
 int find_inedges (TYPE_1__*,TYPE_8__*) ;
 int init_val (TYPE_1__*) ;
 int opt_blk (int *,TYPE_1__*,struct block*,int) ;
 int opt_j (TYPE_1__*,int *) ;
 int or_pullup (TYPE_1__*,struct block*) ;

__attribute__((used)) static void
opt_blks(compiler_state_t *cstate, opt_state_t *opt_state, struct icode *ic,
    int do_stmts)
{
 int i, maxlevel;
 struct block *p;

 init_val(opt_state);
 maxlevel = ic->root->level;

 find_inedges(opt_state, ic->root);
 for (i = maxlevel; i >= 0; --i)
  for (p = opt_state->levels[i]; p; p = p->link)
   opt_blk(cstate, opt_state, p, do_stmts);

 if (do_stmts)




  return;

 for (i = 1; i <= maxlevel; ++i) {
  for (p = opt_state->levels[i]; p; p = p->link) {
   opt_j(opt_state, &p->et);
   opt_j(opt_state, &p->ef);
  }
 }

 find_inedges(opt_state, ic->root);
 for (i = 1; i <= maxlevel; ++i) {
  for (p = opt_state->levels[i]; p; p = p->link) {
   or_pullup(opt_state, p);
   and_pullup(opt_state, p);
  }
 }
}
