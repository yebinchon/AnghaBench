
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_5__ {int linktype; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_u_int32 ;
typedef int bpf_int32 ;


 int BPF_B ;




 scalar_t__ IEEE80211_FC1_DIR_MASK ;
 int OR_LINKHDR ;
 int bpf_error (TYPE_1__*,char*) ;
 struct block* gen_mcmp (TYPE_1__*,int ,int,int ,int ,int ) ;

struct block *
gen_p80211_fcdir(compiler_state_t *cstate, int fcdir)
{
 struct block *b0;

 switch (cstate->linktype) {

 case 131:
 case 128:
 case 129:
 case 130:
  break;

 default:
  bpf_error(cstate, "frame direction supported only with 802.11 headers");

 }

 b0 = gen_mcmp(cstate, OR_LINKHDR, 1, BPF_B, (bpf_int32)fcdir,
  (bpf_u_int32)IEEE80211_FC1_DIR_MASK);

 return (b0);
}
