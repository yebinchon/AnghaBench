
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct vmx {TYPE_1__* state; int vm; } ;
struct TYPE_2__ {int vpid; } ;


 int DEFAULT_APIC_BASE ;
 int M_VMX ;
 int PAGE_SIZE ;
 scalar_t__ apic_access_virtualization (struct vmx*,int ) ;
 int free (struct vmx*,int ) ;
 int vm_get_maxcpus (int ) ;
 int vm_unmap_mmio (int ,int ,int ) ;
 int vpid_free (int ) ;

__attribute__((used)) static void
vmx_vmcleanup(void *arg)
{
 int i;
 struct vmx *vmx = arg;
 uint16_t maxcpus;

 if (apic_access_virtualization(vmx, 0))
  vm_unmap_mmio(vmx->vm, DEFAULT_APIC_BASE, PAGE_SIZE);

 maxcpus = vm_get_maxcpus(vmx->vm);
 for (i = 0; i < maxcpus; i++)
  vpid_free(vmx->state[i].vpid);

 free(vmx, M_VMX);

 return;
}
