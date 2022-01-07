
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slist {int dummy; } ;
struct TYPE_2__ {int k; } ;
struct block {TYPE_1__ s; struct slist* stmts; } ;
typedef int compiler_state_t ;


 int BPF_LD ;
 int BPF_LEN ;
 int JMP (int) ;
 struct block* new_block (int *,int ) ;
 struct slist* new_stmt (int *,int) ;

__attribute__((used)) static struct block *
gen_len(compiler_state_t *cstate, int jmp, int n)
{
 struct slist *s;
 struct block *b;

 s = new_stmt(cstate, BPF_LD|BPF_LEN);
 b = new_block(cstate, JMP(jmp));
 b->stmts = s;
 b->s.k = n;

 return b;
}
