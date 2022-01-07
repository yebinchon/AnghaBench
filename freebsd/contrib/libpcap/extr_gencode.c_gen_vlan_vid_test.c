
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_H ;
 int OR_LINKPL ;
 struct block* gen_mcmp (int *,int ,int ,int ,int ,int) ;

__attribute__((used)) static struct block *
gen_vlan_vid_test(compiler_state_t *cstate, int vlan_num)
{
 return gen_mcmp(cstate, OR_LINKPL, 0, BPF_H, (bpf_int32)vlan_num, 0x0fff);
}
