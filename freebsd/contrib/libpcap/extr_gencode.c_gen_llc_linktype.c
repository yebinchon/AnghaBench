
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_H ;
 int ETHERMTU ;





 int OR_LLC ;
 struct block* gen_cmp (int *,int ,int,int ,int ) ;
 struct block* gen_snap (int *,int,int const) ;

__attribute__((used)) static struct block *
gen_llc_linktype(compiler_state_t *cstate, int proto)
{



 switch (proto) {

 case 131:
 case 129:
 case 128:





  return gen_cmp(cstate, OR_LLC, 0, BPF_H, (bpf_u_int32)
        ((proto << 8) | proto));

 case 130:




  return gen_cmp(cstate, OR_LLC, 0, BPF_B,
      (bpf_int32)130);

 case 132:
  return gen_snap(cstate, 0x080007, 132);

 default:




  if (proto <= ETHERMTU) {




   return gen_cmp(cstate, OR_LLC, 0, BPF_B, (bpf_int32)proto);
  } else {
   return gen_cmp(cstate, OR_LLC, 6, BPF_H, (bpf_int32)proto);
  }
 }
}
