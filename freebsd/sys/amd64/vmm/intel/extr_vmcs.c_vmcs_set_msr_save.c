
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct vmcs {int dummy; } ;


 int VMCLEAR (struct vmcs*) ;
 int VMCS_ENTRY_MSR_LOAD ;
 int VMCS_ENTRY_MSR_LOAD_COUNT ;
 int VMCS_EXIT_MSR_STORE ;
 int VMCS_EXIT_MSR_STORE_COUNT ;
 int VMPTRLD (struct vmcs*) ;
 int vmwrite (int ,int ) ;

int
vmcs_set_msr_save(struct vmcs *vmcs, u_long g_area, u_int g_count)
{
 int error;

 VMPTRLD(vmcs);






 if ((error = vmwrite(VMCS_EXIT_MSR_STORE, g_area)) != 0)
  goto done;
 if ((error = vmwrite(VMCS_EXIT_MSR_STORE_COUNT, g_count)) != 0)
  goto done;

 if ((error = vmwrite(VMCS_ENTRY_MSR_LOAD, g_area)) != 0)
  goto done;
 if ((error = vmwrite(VMCS_ENTRY_MSR_LOAD_COUNT, g_count)) != 0)
  goto done;

 error = 0;
done:
 VMCLEAR(vmcs);
 return (error);
}
