
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct TYPE_3__ {int intr_status; } ;
struct TYPE_4__ {TYPE_1__ hlt; } ;
struct vm_exit {scalar_t__ exitcode; TYPE_2__ u; } ;
struct vlapic_vtx {int pending_prio; struct pir_desc* pir_desc; } ;
struct vlapic {int vcpuid; int vm; struct LAPIC* apic_page; } ;
struct pir_desc {scalar_t__* pir; int pending; } ;
struct LAPIC {int ppr; } ;


 int APIC_TPR_INT ;
 int KASSERT (int,char*) ;
 int VCPU_CTR1 (int ,int ,char*,int) ;
 scalar_t__ VM_EXITCODE_HLT ;
 int VPR_PRIO_BIT (int) ;
 scalar_t__ atomic_load_acq_long (int *) ;
 int flsl (scalar_t__) ;
 struct vm_exit* vm_exitinfo (int ,int ) ;

__attribute__((used)) static int
vmx_pending_intr(struct vlapic *vlapic, int *vecptr)
{
 struct vlapic_vtx *vlapic_vtx;
 struct pir_desc *pir_desc;
 struct LAPIC *lapic;
 uint64_t pending, pirval;
 uint32_t ppr, vpr;
 int i;





 KASSERT(vecptr == ((void*)0), ("vmx_pending_intr: vecptr must be NULL"));

 vlapic_vtx = (struct vlapic_vtx *)vlapic;
 pir_desc = vlapic_vtx->pir_desc;

 pending = atomic_load_acq_long(&pir_desc->pending);
 if (!pending) {







  struct vm_exit *vmexit;
  uint8_t rvi, ppr;

  vmexit = vm_exitinfo(vlapic->vm, vlapic->vcpuid);
  KASSERT(vmexit->exitcode == VM_EXITCODE_HLT,
      ("vmx_pending_intr: exitcode not 'HLT'"));
  rvi = vmexit->u.hlt.intr_status & APIC_TPR_INT;
  lapic = vlapic->apic_page;
  ppr = lapic->ppr & APIC_TPR_INT;
  if (rvi > ppr) {
   return (1);
  }

  return (0);
 }
 lapic = vlapic->apic_page;
 ppr = lapic->ppr & APIC_TPR_INT;
 if (ppr == 0)
  return (1);

 VCPU_CTR1(vlapic->vm, vlapic->vcpuid, "HLT with non-zero PPR %d",
     lapic->ppr);

 vpr = 0;
 for (i = 3; i >= 0; i--) {
  pirval = pir_desc->pir[i];
  if (pirval != 0) {
   vpr = (i * 64 + flsl(pirval) - 1) & APIC_TPR_INT;
   break;
  }
 }







 if (vpr <= ppr) {
  const u_int prio_bit = VPR_PRIO_BIT(vpr);
  const u_int old = vlapic_vtx->pending_prio;

  if (old > prio_bit && (old & prio_bit) == 0) {
   vlapic_vtx->pending_prio = prio_bit;
  }
  return (0);
 }
 return (1);
}
