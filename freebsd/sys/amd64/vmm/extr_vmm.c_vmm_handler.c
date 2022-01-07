
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int IPI_AST ;


 int VMM_CLEANUP () ;
 int iommu_cleanup () ;
 int lapic_ipi_free (int ) ;
 int vmm_init () ;
 int vmm_initialized ;
 int vmm_ipinum ;
 int * vmm_resume_p ;
 int vmmdev_cleanup () ;
 int vmmdev_init () ;

__attribute__((used)) static int
vmm_handler(module_t mod, int what, void *arg)
{
 int error;

 switch (what) {
 case 129:
  vmmdev_init();
  error = vmm_init();
  if (error == 0)
   vmm_initialized = 1;
  break;
 case 128:
  error = vmmdev_cleanup();
  if (error == 0) {
   vmm_resume_p = ((void*)0);
   iommu_cleanup();
   if (vmm_ipinum != IPI_AST)
    lapic_ipi_free(vmm_ipinum);
   error = VMM_CLEANUP();




   if (error)
    vmm_initialized = 0;
  }
  break;
 default:
  error = 0;
  break;
 }
 return (error);
}
