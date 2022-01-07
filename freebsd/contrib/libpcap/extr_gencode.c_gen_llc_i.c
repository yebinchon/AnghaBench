
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slist {int dummy; } ;
struct TYPE_2__ {int k; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;
typedef int compiler_state_t ;


 int BPF_B ;
 int BPF_JSET ;
 int JMP (int ) ;
 int OR_LLC ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_llc (int *) ;
 struct slist* gen_load_a (int *,int ,int,int ) ;
 int gen_not (struct block*) ;
 struct block* new_block (int *,int ) ;

struct block *
gen_llc_i(compiler_state_t *cstate)
{
 struct block *b0, *b1;
 struct slist *s;




 b0 = gen_llc(cstate);





 s = gen_load_a(cstate, OR_LLC, 2, BPF_B);
 b1 = new_block(cstate, JMP(BPF_JSET));
 b1->s.k = 0x01;
 b1->stmts = s;
 gen_not(b1);
 gen_and(b0, b1);
 return b1;
}
