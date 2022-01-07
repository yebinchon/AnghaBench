
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmx {TYPE_1__* cap; struct vmcs* vmcs; } ;
struct vmcs {int dummy; } ;
struct TYPE_2__ {int proc_ctls; int proc_ctls2; int set; } ;


 int ENOENT ;
 int PROCBASED2_ENABLE_INVPCID ;
 int PROCBASED2_UNRESTRICTED_GUEST ;
 int PROCBASED_HLT_EXITING ;
 int PROCBASED_MTF ;
 int PROCBASED_PAUSE_EXITING ;
 int VMCLEAR (struct vmcs*) ;
 int VMCS_PRI_PROC_BASED_CTLS ;
 int VMCS_SEC_PROC_BASED_CTLS ;
 int VMPTRLD (struct vmcs*) ;





 int cap_halt_exit ;
 int cap_invpcid ;
 int cap_monitor_trap ;
 int cap_pause_exit ;
 int cap_unrestricted_guest ;
 int vmwrite (int,int) ;

__attribute__((used)) static int
vmx_setcap(void *arg, int vcpu, int type, int val)
{
 struct vmx *vmx = arg;
 struct vmcs *vmcs = &vmx->vmcs[vcpu];
 uint32_t baseval;
 uint32_t *pptr;
 int error;
 int flag;
 int reg;
 int retval;

 retval = ENOENT;
 pptr = ((void*)0);

 switch (type) {
 case 131:
  if (cap_halt_exit) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls;
   baseval = *pptr;
   flag = PROCBASED_HLT_EXITING;
   reg = VMCS_PRI_PROC_BASED_CTLS;
  }
  break;
 case 130:
  if (cap_monitor_trap) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls;
   baseval = *pptr;
   flag = PROCBASED_MTF;
   reg = VMCS_PRI_PROC_BASED_CTLS;
  }
  break;
 case 129:
  if (cap_pause_exit) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls;
   baseval = *pptr;
   flag = PROCBASED_PAUSE_EXITING;
   reg = VMCS_PRI_PROC_BASED_CTLS;
  }
  break;
 case 128:
  if (cap_unrestricted_guest) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls2;
   baseval = *pptr;
   flag = PROCBASED2_UNRESTRICTED_GUEST;
   reg = VMCS_SEC_PROC_BASED_CTLS;
  }
  break;
 case 132:
  if (cap_invpcid) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls2;
   baseval = *pptr;
   flag = PROCBASED2_ENABLE_INVPCID;
   reg = VMCS_SEC_PROC_BASED_CTLS;
  }
  break;
 default:
  break;
 }

 if (retval == 0) {
  if (val) {
   baseval |= flag;
  } else {
   baseval &= ~flag;
  }
  VMPTRLD(vmcs);
  error = vmwrite(reg, baseval);
  VMCLEAR(vmcs);

  if (error) {
   retval = error;
  } else {




   if (pptr != ((void*)0)) {
    *pptr = baseval;
   }

   if (val) {
    vmx->cap[vcpu].set |= (1 << type);
   } else {
    vmx->cap[vcpu].set &= ~(1 << type);
   }
  }
 }

 return (retval);
}
