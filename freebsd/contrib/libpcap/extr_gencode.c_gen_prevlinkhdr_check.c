
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_5__ {int prevlinktype; scalar_t__ is_geneve; } ;
typedef TYPE_1__ compiler_state_t ;


 int BPF_H ;

 int OR_PREVLINKHDR ;
 int SUNATM_PKT_BEGIN_POS ;
 struct block* gen_cmp (TYPE_1__*,int ,int ,int ,int) ;
 struct block* gen_geneve_ll_check (TYPE_1__*) ;
 int gen_not (struct block*) ;

__attribute__((used)) static struct block *
gen_prevlinkhdr_check(compiler_state_t *cstate)
{
 struct block *b0;

 if (cstate->is_geneve)
  return gen_geneve_ll_check(cstate);

 switch (cstate->prevlinktype) {

 case 128:







  b0 = gen_cmp(cstate, OR_PREVLINKHDR, SUNATM_PKT_BEGIN_POS, BPF_H, 0xFF00);
  gen_not(b0);
  return b0;

 default:



  return ((void*)0);
 }

}
