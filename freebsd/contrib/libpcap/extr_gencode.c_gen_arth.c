
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; scalar_t__ k; } ;
struct slist {TYPE_1__ s; } ;
struct arth {scalar_t__ regno; struct slist* s; } ;
typedef int compiler_state_t ;


 int BPF_ALU ;
 int BPF_DIV ;
 int BPF_IMM ;
 int BPF_LD ;
 int BPF_MOD ;
 int BPF_ST ;
 int BPF_X ;
 scalar_t__ alloc_reg (int *) ;
 int bpf_error (int *,char*) ;
 int free_reg (int *,scalar_t__) ;
 struct slist* new_stmt (int *,int) ;
 int sappend (struct slist*,struct slist*) ;
 struct slist* xfer_to_a (int *,struct arth*) ;
 struct slist* xfer_to_x (int *,struct arth*) ;

struct arth *
gen_arth(compiler_state_t *cstate, int code, struct arth *a0,
    struct arth *a1)
{
 struct slist *s0, *s1, *s2;





 if (code == BPF_DIV) {
  if (a1->s->s.code == (BPF_LD|BPF_IMM) && a1->s->s.k == 0)
   bpf_error(cstate, "division by zero");
 } else if (code == BPF_MOD) {
  if (a1->s->s.code == (BPF_LD|BPF_IMM) && a1->s->s.k == 0)
   bpf_error(cstate, "modulus by zero");
 }
 s0 = xfer_to_x(cstate, a1);
 s1 = xfer_to_a(cstate, a0);
 s2 = new_stmt(cstate, BPF_ALU|BPF_X|code);

 sappend(s1, s2);
 sappend(s0, s1);
 sappend(a1->s, s0);
 sappend(a0->s, a1->s);

 free_reg(cstate, a0->regno);
 free_reg(cstate, a1->regno);

 s0 = new_stmt(cstate, BPF_ST);
 a0->regno = s0->s.k = alloc_reg(cstate);
 sappend(a0->s, s0);

 return a0;
}
