
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 int BPF_JGE ;
 struct block* gen_len (int *,int ,int) ;

struct block *
gen_greater(compiler_state_t *cstate, int n)
{
 return gen_len(cstate, BPF_JGE, n);
}
