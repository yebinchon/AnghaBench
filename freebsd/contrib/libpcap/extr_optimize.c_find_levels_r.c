
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct icode {int dummy; } ;
struct block {int level; struct block* link; } ;
struct TYPE_3__ {struct block** levels; } ;
typedef TYPE_1__ opt_state_t ;


 struct block* JF (struct block*) ;
 struct block* JT (struct block*) ;
 int MAX (int,int) ;
 int Mark (struct icode*,struct block*) ;
 scalar_t__ isMarked (struct icode*,struct block*) ;

__attribute__((used)) static void
find_levels_r(opt_state_t *opt_state, struct icode *ic, struct block *b)
{
 int level;

 if (isMarked(ic, b))
  return;

 Mark(ic, b);
 b->link = 0;

 if (JT(b)) {
  find_levels_r(opt_state, ic, JT(b));
  find_levels_r(opt_state, ic, JF(b));
  level = MAX(JT(b)->level, JF(b)->level) + 1;
 } else
  level = 0;
 b->level = level;
 b->link = opt_state->levels[level];
 opt_state->levels[level] = b;
}
