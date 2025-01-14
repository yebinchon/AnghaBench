
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int k; } ;
struct slist {TYPE_4__ s; } ;
struct TYPE_11__ {scalar_t__ k; } ;
struct block {TYPE_3__ s; struct slist* stmts; } ;
struct TYPE_10__ {int reg; } ;
struct TYPE_9__ {int reg; } ;
struct TYPE_13__ {TYPE_2__ off_linkpl; TYPE_1__ off_linkhdr; } ;
typedef TYPE_5__ compiler_state_t ;


 int BPF_JEQ ;
 int BPF_JMP ;
 int BPF_LD ;
 int BPF_LDX ;
 int BPF_MEM ;
 int BPF_X ;
 int gen_not (struct block*) ;
 struct block* new_block (TYPE_5__*,int) ;
 struct slist* new_stmt (TYPE_5__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct block *
gen_geneve_ll_check(compiler_state_t *cstate)
{
 struct block *b0;
 struct slist *s, *s1;







 s = new_stmt(cstate, BPF_LD|BPF_MEM);
 s->s.k = cstate->off_linkhdr.reg;

 s1 = new_stmt(cstate, BPF_LDX|BPF_MEM);
 s1->s.k = cstate->off_linkpl.reg;
 sappend(s, s1);

 b0 = new_block(cstate, BPF_JMP|BPF_JEQ|BPF_X);
 b0->stmts = s;
 b0->s.k = 0;
 gen_not(b0);

 return b0;
}
