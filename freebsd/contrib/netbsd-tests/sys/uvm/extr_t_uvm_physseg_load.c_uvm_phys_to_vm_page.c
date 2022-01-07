
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uvm_physseg_t ;
struct vm_page {int dummy; } ;
typedef int paddr_t ;


 scalar_t__ UVM_PHYSSEG_TYPE_INVALID ;
 int atop (int ) ;
 scalar_t__ uvm_physseg_find (int ,int *) ;
 struct vm_page* uvm_physseg_get_pg (scalar_t__,int ) ;

__attribute__((used)) static struct vm_page *
uvm_phys_to_vm_page(paddr_t pa)
{
 paddr_t pf = atop(pa);
 paddr_t off;
 uvm_physseg_t psi;

 psi = uvm_physseg_find(pf, &off);
 if (psi != UVM_PHYSSEG_TYPE_INVALID)
  return uvm_physseg_get_pg(psi, off);
 return(((void*)0));
}
