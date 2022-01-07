
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct invpcid_descr {int pcid; int addr; scalar_t__ pad; } ;
struct TYPE_4__ {scalar_t__ pm_ucr3; TYPE_1__* pm_pcids; } ;
struct TYPE_3__ {int pm_pcid; } ;


 int INVPCID_ADDR ;
 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 scalar_t__ PMAP_NO_CR3 ;
 int PMAP_PCID_USER_PT ;
 int cpuid ;
 int invlpg (int ) ;
 int invpcid (struct invpcid_descr*,int ) ;
 int ** ipi_invlpg_counts ;
 int smp_tlb_addr1 ;
 int smp_tlb_done ;
 int smp_tlb_generation ;
 TYPE_2__* smp_tlb_pmap ;
 int * xhits_pg ;

void
invlpg_invpcid_handler(void)
{
 struct invpcid_descr d;
 uint32_t generation;
 generation = smp_tlb_generation;
 invlpg(smp_tlb_addr1);
 if (smp_tlb_pmap->pm_ucr3 != PMAP_NO_CR3) {
  d.pcid = smp_tlb_pmap->pm_pcids[PCPU_GET(cpuid)].pm_pcid |
      PMAP_PCID_USER_PT;
  d.pad = 0;
  d.addr = smp_tlb_addr1;
  invpcid(&d, INVPCID_ADDR);
 }
 PCPU_SET(smp_tlb_done, generation);
}
