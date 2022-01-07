
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slist {int dummy; } ;
struct TYPE_2__ {scalar_t__ k; } ;
struct block {TYPE_1__ s; struct slist* stmts; } ;
typedef int compiler_state_t ;


 int BPF_JEQ ;
 int BPF_JMP ;
 int BPF_MISC ;
 int BPF_TXA ;
 int BPF_X ;
 int OR_TRAN_IPV4 ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_geneve_check (int *,int ,int ,int) ;
 struct slist* gen_loadx_iphdrlen (int *) ;
 int gen_port ;
 struct block* new_block (int *,int) ;
 struct slist* new_stmt (int *,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct block *
gen_geneve4(compiler_state_t *cstate, int vni)
{
 struct block *b0, *b1;
 struct slist *s, *s1;

 b0 = gen_geneve_check(cstate, gen_port, OR_TRAN_IPV4, vni);


 s = gen_loadx_iphdrlen(cstate);

 s1 = new_stmt(cstate, BPF_MISC|BPF_TXA);
 sappend(s, s1);




 b1 = new_block(cstate, BPF_JMP|BPF_JEQ|BPF_X);
 b1->stmts = s;
 b1->s.k = 0;

 gen_and(b0, b1);

 return b1;
}
