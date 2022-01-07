
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
struct invpcid_descr {int pcid; scalar_t__ addr; scalar_t__ pad; } ;
struct TYPE_4__ {scalar_t__ pm_ucr3; TYPE_1__* pm_pcids; } ;
struct TYPE_3__ {int pm_pcid; } ;


 int INVPCID_ADDR ;
 scalar_t__ PAGE_SIZE ;
 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 scalar_t__ PMAP_NO_CR3 ;
 int PMAP_PCID_USER_PT ;
 int cpuid ;
 int invlpg (scalar_t__) ;
 int invpcid (struct invpcid_descr*,int ) ;
 int ** ipi_invlrng_counts ;
 void* smp_tlb_addr1 ;
 scalar_t__ smp_tlb_addr2 ;
 int smp_tlb_done ;
 int smp_tlb_generation ;
 TYPE_2__* smp_tlb_pmap ;
 int * xhits_rng ;

void
invlrng_invpcid_handler(void)
{
 struct invpcid_descr d;
 vm_offset_t addr, addr2;
 uint32_t generation;
 addr = smp_tlb_addr1;
 addr2 = smp_tlb_addr2;
 generation = smp_tlb_generation;
 do {
  invlpg(addr);
  addr += PAGE_SIZE;
 } while (addr < addr2);
 if (smp_tlb_pmap->pm_ucr3 != PMAP_NO_CR3) {
  d.pcid = smp_tlb_pmap->pm_pcids[PCPU_GET(cpuid)].pm_pcid |
      PMAP_PCID_USER_PT;
  d.pad = 0;
  d.addr = smp_tlb_addr1;
  do {
   invpcid(&d, INVPCID_ADDR);
   d.addr += PAGE_SIZE;
  } while (d.addr < addr2);
 }
 PCPU_SET(smp_tlb_done, generation);
}
