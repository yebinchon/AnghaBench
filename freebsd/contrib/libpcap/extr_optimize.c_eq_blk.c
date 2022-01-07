
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ succ; } ;
struct TYPE_4__ {scalar_t__ succ; } ;
struct TYPE_6__ {scalar_t__ code; scalar_t__ k; } ;
struct block {int stmts; TYPE_2__ ef; TYPE_1__ et; TYPE_3__ s; } ;


 int eq_slist (int ,int ) ;

__attribute__((used)) static inline int
eq_blk(struct block *b0, struct block *b1)
{
 if (b0->s.code == b1->s.code &&
     b0->s.k == b1->s.k &&
     b0->et.succ == b1->et.succ &&
     b0->ef.succ == b1->ef.succ)
  return eq_slist(b0->stmts, b1->stmts);
 return 0;
}
