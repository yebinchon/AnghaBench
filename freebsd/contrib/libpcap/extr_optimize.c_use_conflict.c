
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {scalar_t__ out_use; scalar_t__* val; } ;
typedef scalar_t__ atomset ;


 scalar_t__ ATOMELEM (scalar_t__,int) ;
 int N_ATOMS ;

__attribute__((used)) static int
use_conflict(struct block *b, struct block *succ)
{
 int atom;
 atomset use = succ->out_use;

 if (use == 0)
  return 0;

 for (atom = 0; atom < N_ATOMS; ++atom)
  if (ATOMELEM(use, atom))
   if (b->val[atom] != succ->val[atom])
    return 1;
 return 0;
}
