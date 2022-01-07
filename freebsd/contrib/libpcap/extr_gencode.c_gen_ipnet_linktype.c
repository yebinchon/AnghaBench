
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;


 int IPH_AF_INET ;
 int IPH_AF_INET6 ;
 int OR_LINKTYPE ;
 struct block* gen_cmp (int *,int ,int ,int ,int ) ;
 struct block* gen_false (int *) ;

__attribute__((used)) static struct block *
gen_ipnet_linktype(compiler_state_t *cstate, int proto)
{
 switch (proto) {

 case 129:
  return gen_cmp(cstate, OR_LINKTYPE, 0, BPF_B, (bpf_int32)IPH_AF_INET);


 case 128:
  return gen_cmp(cstate, OR_LINKTYPE, 0, BPF_B,
      (bpf_int32)IPH_AF_INET6);


 default:
  break;
 }

 return gen_false(cstate);
}
