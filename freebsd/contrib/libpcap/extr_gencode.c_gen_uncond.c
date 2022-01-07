
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct block {struct slist* stmts; } ;
typedef int compiler_state_t ;


 int BPF_IMM ;
 int BPF_JEQ ;
 int BPF_LD ;
 int JMP (int ) ;
 struct block* new_block (int *,int ) ;
 struct slist* new_stmt (int *,int) ;

__attribute__((used)) static struct block *
gen_uncond(compiler_state_t *cstate, int rsense)
{
 struct block *b;
 struct slist *s;

 s = new_stmt(cstate, BPF_LD|BPF_IMM);
 s->s.k = !rsense;
 b = new_block(cstate, JMP(BPF_JEQ));
 b->stmts = s;

 return b;
}
