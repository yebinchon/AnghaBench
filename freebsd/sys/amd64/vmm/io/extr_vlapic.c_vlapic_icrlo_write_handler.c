
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int vcpu; int rip; } ;
struct TYPE_4__ {TYPE_1__ spinup_ap; } ;
struct vm_exit {TYPE_2__ u; int exitcode; } ;
struct vlapic {int vcpuid; scalar_t__ boot_state; int vm; struct LAPIC* apic_page; } ;
struct LAPIC {int icr_lo; scalar_t__ icr_hi; } ;
typedef int cpuset_t ;


 int APIC_DELMODE_FIXED ;
 int APIC_DELMODE_INIT ;
 int APIC_DELMODE_MASK ;
 int APIC_DELMODE_NMI ;
 int APIC_DELMODE_STARTUP ;
 int APIC_DELSTAT_PEND ;
 int APIC_DESTMODE_LOG ;



 int APIC_DEST_MASK ;

 int APIC_ESR_SEND_ILLEGAL_VECTOR ;
 int APIC_LEVEL_DEASSERT ;
 int APIC_LEVEL_MASK ;
 int APIC_VECTOR_MASK ;
 scalar_t__ BS_INIT ;
 scalar_t__ BS_RUNNING ;
 scalar_t__ BS_SIPI ;
 int CPU_CLR (int,int *) ;
 int CPU_FFS (int *) ;
 int CPU_SETOF (int,int *) ;
 int CPU_ZERO (int *) ;
 int IPIS_SENT ;
 int PAGE_SHIFT ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int VLAPIC_CTR2 (struct vlapic*,char*,int,int) ;
 int VM_EXITCODE_SPINUP_AP ;
 int lapic_intr_edge (int ,int,int) ;
 int vlapic_calcdest (int ,int *,int,int,int,scalar_t__) ;
 int vlapic_set_error (struct vlapic*,int ,int) ;
 int vm_active_cpus (int ) ;
 struct vm_exit* vm_exitinfo (int ,scalar_t__) ;
 int vm_get_maxcpus (int ) ;
 int vm_inject_nmi (int ,int) ;
 struct vlapic* vm_lapic (int ,int) ;
 int vmm_stat_array_incr (int ,int,int ,int,int) ;
 scalar_t__ x2apic (struct vlapic*) ;

int
vlapic_icrlo_write_handler(struct vlapic *vlapic, bool *retu)
{
 int i;
 bool phys;
 cpuset_t dmask;
 uint64_t icrval;
 uint32_t dest, vec, mode;
 struct vlapic *vlapic2;
 struct vm_exit *vmexit;
 struct LAPIC *lapic;
 uint16_t maxcpus;

 lapic = vlapic->apic_page;
 lapic->icr_lo &= ~APIC_DELSTAT_PEND;
 icrval = ((uint64_t)lapic->icr_hi << 32) | lapic->icr_lo;

 if (x2apic(vlapic))
  dest = icrval >> 32;
 else
  dest = icrval >> (32 + 24);
 vec = icrval & APIC_VECTOR_MASK;
 mode = icrval & APIC_DELMODE_MASK;

 if (mode == APIC_DELMODE_FIXED && vec < 16) {
  vlapic_set_error(vlapic, APIC_ESR_SEND_ILLEGAL_VECTOR, 0);
  VLAPIC_CTR1(vlapic, "Ignoring invalid IPI %d", vec);
  return (0);
 }

 VLAPIC_CTR2(vlapic, "icrlo 0x%016lx triggered ipi %d", icrval, vec);

 if (mode == APIC_DELMODE_FIXED || mode == APIC_DELMODE_NMI) {
  switch (icrval & APIC_DEST_MASK) {
  case 129:
   phys = ((icrval & APIC_DESTMODE_LOG) == 0);
   vlapic_calcdest(vlapic->vm, &dmask, dest, phys, 0,
       x2apic(vlapic));
   break;
  case 128:
   CPU_SETOF(vlapic->vcpuid, &dmask);
   break;
  case 130:
   dmask = vm_active_cpus(vlapic->vm);
   break;
  case 131:
   dmask = vm_active_cpus(vlapic->vm);
   CPU_CLR(vlapic->vcpuid, &dmask);
   break;
  default:
   CPU_ZERO(&dmask);
   break;
  }

  while ((i = CPU_FFS(&dmask)) != 0) {
   i--;
   CPU_CLR(i, &dmask);
   if (mode == APIC_DELMODE_FIXED) {
    lapic_intr_edge(vlapic->vm, i, vec);
    vmm_stat_array_incr(vlapic->vm, vlapic->vcpuid,
          IPIS_SENT, i, 1);
    VLAPIC_CTR2(vlapic, "vlapic sending ipi %d "
        "to vcpuid %d", vec, i);
   } else {
    vm_inject_nmi(vlapic->vm, i);
    VLAPIC_CTR1(vlapic, "vlapic sending ipi nmi "
        "to vcpuid %d", i);
   }
  }

  return (0);
 }

 maxcpus = vm_get_maxcpus(vlapic->vm);
 if (mode == APIC_DELMODE_INIT) {
  if ((icrval & APIC_LEVEL_MASK) == APIC_LEVEL_DEASSERT)
   return (0);

  if (vlapic->vcpuid == 0 && dest != 0 && dest < maxcpus) {
   vlapic2 = vm_lapic(vlapic->vm, dest);


   if (vlapic2->boot_state == BS_INIT) {
    vlapic2->boot_state = BS_SIPI;
   }

   return (0);
  }
 }

 if (mode == APIC_DELMODE_STARTUP) {
  if (vlapic->vcpuid == 0 && dest != 0 && dest < maxcpus) {
   vlapic2 = vm_lapic(vlapic->vm, dest);




   if (vlapic2->boot_state != BS_SIPI)
    return (0);

   vlapic2->boot_state = BS_RUNNING;

   *retu = 1;
   vmexit = vm_exitinfo(vlapic->vm, vlapic->vcpuid);
   vmexit->exitcode = VM_EXITCODE_SPINUP_AP;
   vmexit->u.spinup_ap.vcpu = dest;
   vmexit->u.spinup_ap.rip = vec << PAGE_SHIFT;

   return (0);
  }
 }




 return (1);
}
