
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vlapic {int vcpuid; int vm; } ;


 int IPIS_SENT ;
 int KASSERT (int ,char*) ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int lapic_intr_edge (int ,int ,int) ;
 int vmm_stat_array_incr (int ,int ,int ,int ,int) ;
 int x2apic (struct vlapic*) ;

void
vlapic_self_ipi_handler(struct vlapic *vlapic, uint64_t val)
{
 int vec;

 KASSERT(x2apic(vlapic), ("SELF_IPI does not exist in xAPIC mode"));

 vec = val & 0xff;
 lapic_intr_edge(vlapic->vm, vlapic->vcpuid, vec);
 vmm_stat_array_incr(vlapic->vm, vlapic->vcpuid, IPIS_SENT,
     vlapic->vcpuid, 1);
 VLAPIC_CTR1(vlapic, "vlapic self-ipi %d", vec);
}
