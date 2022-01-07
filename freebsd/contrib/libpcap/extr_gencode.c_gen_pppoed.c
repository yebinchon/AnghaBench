
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 scalar_t__ ETHERTYPE_PPPOED ;
 struct block* gen_linktype (int *,int ) ;

struct block *
gen_pppoed(compiler_state_t *cstate)
{

 return gen_linktype(cstate, (bpf_int32)ETHERTYPE_PPPOED);
}
