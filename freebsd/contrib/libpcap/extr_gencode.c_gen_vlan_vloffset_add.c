
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int k; } ;
struct slist {TYPE_1__ s; } ;
typedef int compiler_state_t ;
struct TYPE_5__ {int is_variable; int reg; } ;
typedef TYPE_2__ bpf_abs_offset ;


 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_IMM ;
 int BPF_LD ;
 int BPF_MEM ;
 int BPF_ST ;
 int alloc_reg (int *) ;
 struct slist* new_stmt (int *,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static void
gen_vlan_vloffset_add(compiler_state_t *cstate, bpf_abs_offset *off, int v, struct slist *s)
{
 struct slist *s2;

 if (!off->is_variable)
  off->is_variable = 1;
 if (off->reg == -1)
  off->reg = alloc_reg(cstate);

 s2 = new_stmt(cstate, BPF_LD|BPF_MEM);
 s2->s.k = off->reg;
 sappend(s, s2);
 s2 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_IMM);
 s2->s.k = v;
 sappend(s, s2);
 s2 = new_stmt(cstate, BPF_ST);
 s2->s.k = off->reg;
 sappend(s, s2);
}
