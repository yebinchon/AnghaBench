
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_6__ {int constant_part; } ;
struct TYPE_7__ {TYPE_1__ off_linkpl; } ;
typedef TYPE_2__ compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_H ;
 int ETHERMTU ;


 int const ETHERTYPE_IPX ;
 int LINUX_SLL_P_802_2 ;
 int LINUX_SLL_P_802_3 ;




 int OR_LINKHDR ;
 int OR_LINKTYPE ;
 int OR_LLC ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (TYPE_2__*,int ,int ,int ,int ) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_snap (TYPE_2__*,int,int const) ;

__attribute__((used)) static struct block *
gen_linux_sll_linktype(compiler_state_t *cstate, int proto)
{
 struct block *b0, *b1;

 switch (proto) {

 case 129:
 case 131:
 case 128:
  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, LINUX_SLL_P_802_2);
  b1 = gen_cmp(cstate, OR_LLC, 0, BPF_H, (bpf_int32)
        ((proto << 8) | proto));
  gen_and(b0, b1);
  return b1;

 case 130:
  b0 = gen_cmp(cstate, OR_LLC, 0, BPF_B, (bpf_int32)130);
  b1 = gen_snap(cstate, 0x000000, ETHERTYPE_IPX);
  gen_or(b0, b1);
  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, LINUX_SLL_P_802_2);
  gen_and(b0, b1);





  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, LINUX_SLL_P_802_3);
  gen_or(b0, b1);






  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, (bpf_int32)ETHERTYPE_IPX);
  gen_or(b0, b1);
  return b1;

 case 132:
 case 133:
  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, LINUX_SLL_P_802_2);
  if (proto == 132)
   b1 = gen_snap(cstate, 0x080007, 132);
  else
   b1 = gen_snap(cstate, 0x000000, 133);
  gen_and(b0, b1);






  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, (bpf_int32)proto);

  gen_or(b0, b1);
  return b1;

 default:
  if (proto <= ETHERMTU) {







   b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, LINUX_SLL_P_802_2);
   b1 = gen_cmp(cstate, OR_LINKHDR, cstate->off_linkpl.constant_part, BPF_B,
        (bpf_int32)proto);
   gen_and(b0, b1);
   return b1;
  } else {
   return gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, (bpf_int32)proto);
  }
 }
}
