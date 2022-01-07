
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int k; } ;
struct slist {TYPE_1__ s; } ;
typedef int compiler_state_t ;
struct TYPE_5__ {int reg; scalar_t__ is_variable; } ;
typedef TYPE_2__ bpf_abs_offset ;


 int BPF_LDX ;
 int BPF_MEM ;
 int alloc_reg (int *) ;
 struct slist* new_stmt (int *,int) ;

__attribute__((used)) static struct slist *
gen_abs_offset_varpart(compiler_state_t *cstate, bpf_abs_offset *off)
{
 struct slist *s;

 if (off->is_variable) {
  if (off->reg == -1) {





   off->reg = alloc_reg(cstate);
  }





  s = new_stmt(cstate, BPF_LDX|BPF_MEM);
  s->s.k = off->reg;
  return s;
 } else {




  return ((void*)0);
 }
}
