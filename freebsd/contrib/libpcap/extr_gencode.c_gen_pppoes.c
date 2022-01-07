
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_9__ {scalar_t__ constant_part; } ;
struct TYPE_8__ {scalar_t__ constant_part; int reg; int is_variable; } ;
struct TYPE_10__ {scalar_t__ off_nl_nosnap; scalar_t__ off_nl; TYPE_2__ off_linkhdr; TYPE_1__ off_linkpl; TYPE_2__ off_linktype; } ;
typedef TYPE_3__ compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_W ;
 int DLT_PPP ;
 scalar_t__ ETHERTYPE_PPPOES ;
 int OR_LINKPL ;
 int PUSH_LINKHDR (TYPE_3__*,int ,int ,scalar_t__,int ) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_linktype (TYPE_3__*,int ) ;
 struct block* gen_mcmp (TYPE_3__*,int ,int ,int ,int ,int) ;

struct block *
gen_pppoes(compiler_state_t *cstate, int sess_num)
{
 struct block *b0, *b1;




 b0 = gen_linktype(cstate, (bpf_int32)ETHERTYPE_PPPOES);


 if (sess_num >= 0) {
  b1 = gen_mcmp(cstate, OR_LINKPL, 0, BPF_W,
      (bpf_int32)sess_num, 0x0000ffff);
  gen_and(b0, b1);
  b0 = b1;
 }
 PUSH_LINKHDR(cstate, DLT_PPP, cstate->off_linkpl.is_variable,
     cstate->off_linkpl.constant_part + cstate->off_nl + 6,
     cstate->off_linkpl.reg);

 cstate->off_linktype = cstate->off_linkhdr;
 cstate->off_linkpl.constant_part = cstate->off_linkhdr.constant_part + 2;

 cstate->off_nl = 0;
 cstate->off_nl_nosnap = 0;

 return b0;
}
