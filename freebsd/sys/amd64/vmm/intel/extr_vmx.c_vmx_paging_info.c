
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_guest_paging {int paging_mode; int cpu_mode; int cpl; int cr3; } ;


 int vmcs_guest_cr3 () ;
 int vmx_cpl () ;
 int vmx_cpu_mode () ;
 int vmx_paging_mode () ;

__attribute__((used)) static void
vmx_paging_info(struct vm_guest_paging *paging)
{
 paging->cr3 = vmcs_guest_cr3();
 paging->cpl = vmx_cpl();
 paging->cpu_mode = vmx_cpu_mode();
 paging->paging_mode = vmx_paging_mode();
}
