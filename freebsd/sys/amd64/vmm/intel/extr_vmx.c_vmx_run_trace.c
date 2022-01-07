
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx {int vm; } ;


 int VCPU_CTR1 (int ,int,char*,int ) ;
 int vmcs_guest_rip () ;

__attribute__((used)) static __inline void
vmx_run_trace(struct vmx *vmx, int vcpu)
{



}
