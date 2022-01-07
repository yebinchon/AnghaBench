
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ k; } ;
struct slist {TYPE_1__ s; } ;
struct arth {int s; scalar_t__ regno; } ;
typedef int compiler_state_t ;


 int BPF_ALU ;
 int BPF_NEG ;
 int BPF_ST ;
 struct slist* new_stmt (int *,int) ;
 int sappend (int ,struct slist*) ;
 struct slist* xfer_to_a (int *,struct arth*) ;

struct arth *
gen_neg(compiler_state_t *cstate, struct arth *a)
{
 struct slist *s;

 s = xfer_to_a(cstate, a);
 sappend(a->s, s);
 s = new_stmt(cstate, BPF_ALU|BPF_NEG);
 s->s.k = 0;
 sappend(a->s, s);
 s = new_stmt(cstate, BPF_ST);
 s->s.k = a->regno;
 sappend(a->s, s);

 return a;
}
