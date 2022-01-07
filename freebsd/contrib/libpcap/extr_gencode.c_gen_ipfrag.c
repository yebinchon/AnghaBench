
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slist {int dummy; } ;
struct TYPE_2__ {int k; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;
typedef int compiler_state_t ;


 int BPF_H ;
 int BPF_JSET ;
 int JMP (int ) ;
 int OR_LINKPL ;
 struct slist* gen_load_a (int *,int ,int,int ) ;
 int gen_not (struct block*) ;
 struct block* new_block (int *,int ) ;

__attribute__((used)) static struct block *
gen_ipfrag(compiler_state_t *cstate)
{
 struct slist *s;
 struct block *b;


 s = gen_load_a(cstate, OR_LINKPL, 6, BPF_H);
 b = new_block(cstate, JMP(BPF_JSET));
 b->s.k = 0x1fff;
 b->stmts = s;
 gen_not(b);

 return b;
}
