
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
typedef int u_int ;
struct vlapic_vtx {int pending_prio; struct pir_desc* pir_desc; } ;
struct vlapic {int vcpuid; int vm; } ;
struct pir_desc {int pending; int * pir; } ;


 int APIC_TPR_INT ;
 int VMX_CTR_PIR (int ,int ,struct pir_desc*,int,int,int,char*) ;
 int VPR_PRIO_BIT (int) ;
 scalar_t__ atomic_cmpset_long (int *,int ,int) ;
 int atomic_set_int (int*,int const) ;
 int atomic_set_long (int *,unsigned long) ;

__attribute__((used)) static int
vmx_set_intr_ready(struct vlapic *vlapic, int vector, bool level)
{
 struct vlapic_vtx *vlapic_vtx;
 struct pir_desc *pir_desc;
 uint64_t mask;
 int idx, notify = 0;

 vlapic_vtx = (struct vlapic_vtx *)vlapic;
 pir_desc = vlapic_vtx->pir_desc;






 idx = vector / 64;
 mask = 1UL << (vector % 64);
 atomic_set_long(&pir_desc->pir[idx], mask);
 if (atomic_cmpset_long(&pir_desc->pending, 0, 1) != 0) {
  notify = 1;
  vlapic_vtx->pending_prio = 0;
 } else {
  const u_int old_prio = vlapic_vtx->pending_prio;
  const u_int prio_bit = VPR_PRIO_BIT(vector & APIC_TPR_INT);

  if ((old_prio & prio_bit) == 0 && prio_bit > old_prio) {
   atomic_set_int(&vlapic_vtx->pending_prio, prio_bit);
   notify = 1;
  }
 }

 VMX_CTR_PIR(vlapic->vm, vlapic->vcpuid, pir_desc, notify, vector,
     level, "vmx_set_intr_ready");
 return (notify);
}
