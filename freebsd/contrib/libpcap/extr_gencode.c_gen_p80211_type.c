
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_5__ {int linktype; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;




 int OR_LINKHDR ;
 int bpf_error (TYPE_1__*,char*) ;
 struct block* gen_mcmp (TYPE_1__*,int ,int ,int ,int ,int ) ;

struct block *
gen_p80211_type(compiler_state_t *cstate, int type, int mask)
{
 struct block *b0;

 switch (cstate->linktype) {

 case 131:
 case 128:
 case 129:
 case 130:
  b0 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, (bpf_int32)type,
      (bpf_int32)mask);
  break;

 default:
  bpf_error(cstate, "802.11 link-layer types supported only on 802.11");

 }

 return (b0);
}
