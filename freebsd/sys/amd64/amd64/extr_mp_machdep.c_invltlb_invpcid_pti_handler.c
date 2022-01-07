
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct invpcid_descr {int pcid; scalar_t__ addr; scalar_t__ pad; } ;
struct TYPE_5__ {TYPE_1__* pm_pcids; } ;
struct TYPE_4__ {int pm_pcid; } ;


 int INVPCID_CTX ;
 int INVPCID_CTXGLOB ;
 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int PMAP_PCID_USER_PT ;
 int cpuid ;
 int invpcid (struct invpcid_descr*,int ) ;
 int ** ipi_invltlb_counts ;
 TYPE_2__* kernel_pmap ;
 int smp_tlb_done ;
 int smp_tlb_generation ;
 TYPE_2__* smp_tlb_pmap ;
 int * xhits_gbl ;

void
invltlb_invpcid_pti_handler(void)
{
 struct invpcid_descr d;
 uint32_t generation;
 generation = smp_tlb_generation;
 d.pcid = smp_tlb_pmap->pm_pcids[PCPU_GET(cpuid)].pm_pcid;
 d.pad = 0;
 d.addr = 0;
 if (smp_tlb_pmap == kernel_pmap) {






  invpcid(&d, INVPCID_CTXGLOB);
 } else {
  invpcid(&d, INVPCID_CTX);
  d.pcid |= PMAP_PCID_USER_PT;
  invpcid(&d, INVPCID_CTX);
 }
 PCPU_SET(smp_tlb_done, generation);
}
