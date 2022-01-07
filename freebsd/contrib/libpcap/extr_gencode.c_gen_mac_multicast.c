
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
 struct slist* gen_load_a (int *,int ,int,int ) ;
 struct block* new_block (int *,int ) ;

__attribute__((used)) static struct block *
gen_mac_multicast(compiler_state_t *cstate, int offset)
{
 register struct block *b0;
 register struct slist *s;


 s = gen_load_a(cstate, OR_LINKHDR, offset, BPF_B);
 b0 = new_block(cstate, JMP(BPF_JSET));
 b0->s.k = 1;
 b0->stmts = s;
 return b0;
}
