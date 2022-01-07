
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int ;
struct thread {TYPE_1__* td_proc; } ;
typedef TYPE_2__* pmap_t ;
struct TYPE_6__ {int pm_active; } ;
struct TYPE_5__ {int p_vmspace; } ;


 int CPU_CLR (void*,int *) ;
 int CPU_CLR_ATOMIC (void*,int *) ;
 int CPU_SET (void*,int *) ;
 int CPU_SET_ATOMIC (void*,int *) ;
 scalar_t__ CPU_VENDOR_INTEL ;
 void* PCPU_GET (void*) ;
 scalar_t__ cpu_vendor_id ;
 void* curpmap ;
 int mfence () ;
 int pmap_activate_sw_mode (struct thread*,TYPE_2__*,void*) ;
 TYPE_2__* vmspace_pmap (int ) ;

void
pmap_activate_sw(struct thread *td)
{
 pmap_t oldpmap, pmap;
 u_int cpuid;

 oldpmap = PCPU_GET(curpmap);
 pmap = vmspace_pmap(td->td_proc->p_vmspace);
 if (oldpmap == pmap) {
  if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
  return;
 }
 cpuid = PCPU_GET(cpuid);



 CPU_SET(cpuid, &pmap->pm_active);

 pmap_activate_sw_mode(td, pmap, cpuid);



 CPU_CLR(cpuid, &oldpmap->pm_active);

}
