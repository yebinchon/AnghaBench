
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
struct TYPE_2__ {int td_pcb; } ;


 scalar_t__ PCPU_PTR (int ) ;
 int PCPU_SET (int,int) ;
 int PC_PTI_STACK_SZ ;
 int curpcb ;
 int pti_rsp0 ;
 int pti_stack ;
 TYPE_1__ thread0 ;

void
amd64_bsp_pcpu_init2(uint64_t rsp0)
{

 PCPU_SET(rsp0, rsp0);
 PCPU_SET(pti_rsp0, ((vm_offset_t)PCPU_PTR(pti_stack) +
     PC_PTI_STACK_SZ * sizeof(uint64_t)) & ~0xful);
 PCPU_SET(curpcb, thread0.td_pcb);
}
