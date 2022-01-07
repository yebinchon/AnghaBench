
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* regused; size_t curreg; } ;
typedef TYPE_1__ compiler_state_t ;


 int BPF_MEMWORDS ;
 int bpf_error (TYPE_1__*,char*) ;

__attribute__((used)) static int
alloc_reg(compiler_state_t *cstate)
{
 int n = BPF_MEMWORDS;

 while (--n >= 0) {
  if (cstate->regused[cstate->curreg])
   cstate->curreg = (cstate->curreg + 1) % BPF_MEMWORDS;
  else {
   cstate->regused[cstate->curreg] = 1;
   return cstate->curreg;
  }
 }
 bpf_error(cstate, "too many registers needed to evaluate expression");

}
