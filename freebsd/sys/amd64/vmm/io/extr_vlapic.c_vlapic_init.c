
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {scalar_t__ vcpuid; int msr_apicbase; int callout; int timer_mtx; int * apic_page; int * vm; } ;


 int APICBASE_BSP ;
 int APICBASE_ENABLED ;
 int DEFAULT_APIC_BASE ;
 int KASSERT (int,char*) ;
 int MTX_SPIN ;
 int callout_init (int *,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int vlapic_reset (struct vlapic*) ;
 scalar_t__ vm_get_maxcpus (int *) ;

void
vlapic_init(struct vlapic *vlapic)
{
 KASSERT(vlapic->vm != ((void*)0), ("vlapic_init: vm is not initialized"));
 KASSERT(vlapic->vcpuid >= 0 &&
     vlapic->vcpuid < vm_get_maxcpus(vlapic->vm),
     ("vlapic_init: vcpuid is not initialized"));
 KASSERT(vlapic->apic_page != ((void*)0), ("vlapic_init: apic_page is not "
     "initialized"));
 mtx_init(&vlapic->timer_mtx, "vlapic timer mtx", ((void*)0), MTX_SPIN);
 callout_init(&vlapic->callout, 1);

 vlapic->msr_apicbase = DEFAULT_APIC_BASE | APICBASE_ENABLED;

 if (vlapic->vcpuid == 0)
  vlapic->msr_apicbase |= APICBASE_BSP;

 vlapic_reset(vlapic);
}
