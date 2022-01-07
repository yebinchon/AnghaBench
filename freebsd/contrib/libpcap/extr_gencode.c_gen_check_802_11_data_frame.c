
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
 int OR_LINKHDR ;
 int gen_and (struct block*,struct block*) ;
 struct slist* gen_load_a (int *,int ,int ,int ) ;
 int gen_not (struct block*) ;
 struct block* new_block (int *,int ) ;

__attribute__((used)) static struct block *
gen_check_802_11_data_frame(compiler_state_t *cstate)
{
 struct slist *s;
 struct block *b0, *b1;





 s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
 b0 = new_block(cstate, JMP(BPF_JSET));
 b0->s.k = 0x08;
 b0->stmts = s;

 s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
 b1 = new_block(cstate, JMP(BPF_JSET));
 b1->s.k = 0x04;
 b1->stmts = s;
 gen_not(b1);

 gen_and(b1, b0);

 return b0;
}
