
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct icode {int dummy; } ;
struct block {int id; } ;
struct TYPE_3__ {struct block** blocks; int n_blocks; } ;
typedef TYPE_1__ opt_state_t ;


 struct block* JF (struct block*) ;
 struct block* JT (struct block*) ;
 int Mark (struct icode*,struct block*) ;
 scalar_t__ isMarked (struct icode*,struct block*) ;

__attribute__((used)) static void
number_blks_r(opt_state_t *opt_state, struct icode *ic, struct block *p)
{
 int n;

 if (p == 0 || isMarked(ic, p))
  return;

 Mark(ic, p);
 n = opt_state->n_blocks++;
 p->id = n;
 opt_state->blocks[n] = p;

 number_blks_r(opt_state, ic, JT(p));
 number_blks_r(opt_state, ic, JF(p));
}
