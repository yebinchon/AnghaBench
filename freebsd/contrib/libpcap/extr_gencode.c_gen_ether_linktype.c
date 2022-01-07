
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_H ;
 int ETHERMTU ;


 int const ETHERTYPE_IPX ;




 int OR_LINKTYPE ;
 int OR_LLC ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (int *,int ,int,int ,int ) ;
 struct block* gen_cmp_gt (int *,int ,int ,int ,int) ;
 int gen_not (struct block*) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_snap (int *,int,int const) ;

__attribute__((used)) static struct block *
gen_ether_linktype(compiler_state_t *cstate, int proto)
{
 struct block *b0, *b1;

 switch (proto) {

 case 129:
 case 131:
 case 128:
  b0 = gen_cmp_gt(cstate, OR_LINKTYPE, 0, BPF_H, ETHERMTU);
  gen_not(b0);
  b1 = gen_cmp(cstate, OR_LLC, 0, BPF_H, (bpf_int32)
        ((proto << 8) | proto));
  gen_and(b0, b1);
  return b1;

 case 130:
  b0 = gen_cmp(cstate, OR_LLC, 0, BPF_B, (bpf_int32)130);
  b1 = gen_cmp(cstate, OR_LLC, 0, BPF_H, (bpf_int32)0xFFFF);
  gen_or(b0, b1);





  b0 = gen_snap(cstate, 0x000000, ETHERTYPE_IPX);
  gen_or(b0, b1);





  b0 = gen_cmp_gt(cstate, OR_LINKTYPE, 0, BPF_H, ETHERMTU);
  gen_not(b0);







  gen_and(b0, b1);






  b0 = gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H, (bpf_int32)ETHERTYPE_IPX);
  gen_or(b0, b1);
  return b1;

 case 132:
 case 133:
  b0 = gen_cmp_gt(cstate, OR_LINKTYPE, 0, BPF_H, ETHERMTU);
  gen_not(b0);
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
   b0 = gen_cmp_gt(cstate, OR_LINKTYPE, 0, BPF_H, ETHERMTU);
   gen_not(b0);
   b1 = gen_cmp(cstate, OR_LINKTYPE, 2, BPF_B, (bpf_int32)proto);
   gen_and(b0, b1);
   return b1;
  } else {
   return gen_cmp(cstate, OR_LINKTYPE, 0, BPF_H,
       (bpf_int32)proto);
  }
 }
}
