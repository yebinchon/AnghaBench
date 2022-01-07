
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slist {TYPE_2__* next; } ;
struct arth {int regno; struct slist* s; } ;
typedef int compiler_state_t ;
struct TYPE_3__ {int k; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 int BPF_LD ;
 int BPF_LEN ;
 int BPF_ST ;
 int alloc_reg (int *) ;
 void* new_stmt (int *,int) ;
 scalar_t__ newchunk (int *,int) ;

struct arth *
gen_loadlen(compiler_state_t *cstate)
{
 int regno = alloc_reg(cstate);
 struct arth *a = (struct arth *)newchunk(cstate, sizeof(*a));
 struct slist *s;

 s = new_stmt(cstate, BPF_LD|BPF_LEN);
 s->next = new_stmt(cstate, BPF_ST);
 s->next->s.k = regno;
 a->s = s;
 a->regno = regno;

 return a;
}
