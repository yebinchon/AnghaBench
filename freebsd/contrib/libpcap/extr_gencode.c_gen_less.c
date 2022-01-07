
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 int BPF_JGT ;
 struct block* gen_len (int *,int ,int) ;
 int gen_not (struct block*) ;

struct block *
gen_less(compiler_state_t *cstate, int n)
{
 struct block *b;

 b = gen_len(cstate, BPF_JGT, n);
 gen_not(b);

 return b;
}
