
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int k; } ;
struct slist {TYPE_2__* next; TYPE_3__ s; } ;
struct arth {int regno; struct slist* s; } ;
typedef int compiler_state_t ;
struct TYPE_4__ {int k; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 int BPF_IMM ;
 int BPF_LD ;
 int BPF_ST ;
 int alloc_reg (int *) ;
 void* new_stmt (int *,int) ;
 scalar_t__ newchunk (int *,int) ;

struct arth *
gen_loadi(compiler_state_t *cstate, int val)
{
 struct arth *a;
 struct slist *s;
 int reg;

 a = (struct arth *)newchunk(cstate, sizeof(*a));

 reg = alloc_reg(cstate);

 s = new_stmt(cstate, BPF_LD|BPF_IMM);
 s->s.k = val;
 s->next = new_stmt(cstate, BPF_ST);
 s->next->s.k = reg;
 a->s = s;
 a->regno = reg;

 return a;
}
