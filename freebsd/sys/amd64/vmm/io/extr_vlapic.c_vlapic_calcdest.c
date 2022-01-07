
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vm {int dummy; } ;
struct vlapic {TYPE_1__* apic_page; } ;
typedef int cpuset_t ;
struct TYPE_2__ {int dfr; int ldr; } ;


 int APIC_DFR_MODEL_CLUSTER ;
 int APIC_DFR_MODEL_FLAT ;
 int APIC_DFR_MODEL_MASK ;
 int CPU_CLR (int,int *) ;
 int CPU_FFS (int *) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int vm_active_cpus (struct vm*) ;
 int vm_apicid2vcpuid (struct vm*,int) ;
 int vm_get_maxcpus (struct vm*) ;
 struct vlapic* vm_lapic (struct vm*,int) ;
 scalar_t__ x2apic (struct vlapic*) ;

__attribute__((used)) static void
vlapic_calcdest(struct vm *vm, cpuset_t *dmask, uint32_t dest, bool phys,
    bool lowprio, bool x2apic_dest)
{
 struct vlapic *vlapic;
 uint32_t dfr, ldr, ldest, cluster;
 uint32_t mda_flat_ldest, mda_cluster_ldest, mda_ldest, mda_cluster_id;
 cpuset_t amask;
 int vcpuid;

 if ((x2apic_dest && dest == 0xffffffff) ||
     (!x2apic_dest && dest == 0xff)) {



  *dmask = vm_active_cpus(vm);
  return;
 }

 if (phys) {



  CPU_ZERO(dmask);
  vcpuid = vm_apicid2vcpuid(vm, dest);
  amask = vm_active_cpus(vm);
  if (vcpuid < vm_get_maxcpus(vm) && CPU_ISSET(vcpuid, &amask))
   CPU_SET(vcpuid, dmask);
 } else {




  mda_flat_ldest = dest & 0xff;





  if (x2apic_dest) {
   mda_cluster_id = dest >> 16;
   mda_cluster_ldest = dest & 0xffff;
  } else {
   mda_cluster_id = (dest >> 4) & 0xf;
   mda_cluster_ldest = dest & 0xf;
  }





  CPU_ZERO(dmask);
  amask = vm_active_cpus(vm);
  while ((vcpuid = CPU_FFS(&amask)) != 0) {
   vcpuid--;
   CPU_CLR(vcpuid, &amask);

   vlapic = vm_lapic(vm, vcpuid);
   dfr = vlapic->apic_page->dfr;
   ldr = vlapic->apic_page->ldr;

   if ((dfr & APIC_DFR_MODEL_MASK) ==
       APIC_DFR_MODEL_FLAT) {
    ldest = ldr >> 24;
    mda_ldest = mda_flat_ldest;
   } else if ((dfr & APIC_DFR_MODEL_MASK) ==
       APIC_DFR_MODEL_CLUSTER) {
    if (x2apic(vlapic)) {
     cluster = ldr >> 16;
     ldest = ldr & 0xffff;
    } else {
     cluster = ldr >> 28;
     ldest = (ldr >> 24) & 0xf;
    }
    if (cluster != mda_cluster_id)
     continue;
    mda_ldest = mda_cluster_ldest;
   } else {




    VLAPIC_CTR1(vlapic, "vlapic has bad logical "
        "model %x - cannot deliver interrupt", dfr);
    continue;
   }

   if ((mda_ldest & ldest) != 0) {
    CPU_SET(vcpuid, dmask);
    if (lowprio)
     break;
   }
  }
 }
}
