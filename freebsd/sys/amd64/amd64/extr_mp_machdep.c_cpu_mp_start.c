
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpu_bsp; } ;
struct TYPE_3__ {int (* start_all_aps ) () ;} ;


 int IDTVEC (int ) ;
 int IPI_BITMAP_VECTOR ;
 int IPI_INVLCACHE ;
 int IPI_INVLPG ;
 int IPI_INVLRNG ;
 int IPI_INVLTLB ;
 int IPI_RENDEZVOUS ;
 int IPI_STOP ;
 int IPI_SUSPEND ;
 int KASSERT (int,char*) ;
 int MAXCPU ;
 int PCPU_GET (int ) ;
 int SDT_SYSIGT ;
 int SEL_KPL ;
 int apic_id ;
 int assign_cpu_ids () ;
 int boot_cpu_id ;
 int* cpu_apic_ids ;
 TYPE_2__* cpu_info ;
 int cpustop ;
 int cpustop_pti ;
 int cpususpend ;
 int cpususpend_pti ;
 TYPE_1__ init_ops ;
 int invlcache ;
 int invlcache_pti ;
 int invlpg ;
 int invlpg_invpcid ;
 int invlpg_invpcid_pti ;
 int invlpg_pcid ;
 int invlpg_pcid_pti ;
 int invlpg_pti ;
 int invlrng ;
 int invlrng_invpcid ;
 int invlrng_invpcid_pti ;
 int invlrng_pcid ;
 int invlrng_pcid_pti ;
 int invlrng_pti ;
 int invltlb ;
 int invltlb_invpcid_nopti ;
 int invltlb_invpcid_pti_pti ;
 int invltlb_pcid ;
 int invltlb_pcid_pti ;
 int invltlb_pti ;
 scalar_t__ invpcid_works ;
 int ipi_intr_bitmap_handler ;
 int ipi_intr_bitmap_handler_pti ;
 scalar_t__ pmap_pcid_enabled ;
 scalar_t__ pti ;
 int rendezvous ;
 int rendezvous_pti ;
 int set_interrupt_apic_ids () ;
 int setidt (int ,int ,int ,int ,int ) ;
 int stub1 () ;
 int topo_probe () ;

void
cpu_mp_start(void)
{
 int i;


 for (i = 0; i < MAXCPU; i++) {
  cpu_apic_ids[i] = -1;
 }


 if (pmap_pcid_enabled) {
  if (invpcid_works) {
   setidt(IPI_INVLTLB, pti ?
       IDTVEC(invltlb_invpcid_pti_pti) :
       IDTVEC(invltlb_invpcid_nopti), SDT_SYSIGT,
       SEL_KPL, 0);
   setidt(IPI_INVLPG, pti ? IDTVEC(invlpg_invpcid_pti) :
       IDTVEC(invlpg_invpcid), SDT_SYSIGT, SEL_KPL, 0);
   setidt(IPI_INVLRNG, pti ? IDTVEC(invlrng_invpcid_pti) :
       IDTVEC(invlrng_invpcid), SDT_SYSIGT, SEL_KPL, 0);
  } else {
   setidt(IPI_INVLTLB, pti ? IDTVEC(invltlb_pcid_pti) :
       IDTVEC(invltlb_pcid), SDT_SYSIGT, SEL_KPL, 0);
   setidt(IPI_INVLPG, pti ? IDTVEC(invlpg_pcid_pti) :
       IDTVEC(invlpg_pcid), SDT_SYSIGT, SEL_KPL, 0);
   setidt(IPI_INVLRNG, pti ? IDTVEC(invlrng_pcid_pti) :
       IDTVEC(invlrng_pcid), SDT_SYSIGT, SEL_KPL, 0);
  }
 } else {
  setidt(IPI_INVLTLB, pti ? IDTVEC(invltlb_pti) : IDTVEC(invltlb),
      SDT_SYSIGT, SEL_KPL, 0);
  setidt(IPI_INVLPG, pti ? IDTVEC(invlpg_pti) : IDTVEC(invlpg),
      SDT_SYSIGT, SEL_KPL, 0);
  setidt(IPI_INVLRNG, pti ? IDTVEC(invlrng_pti) : IDTVEC(invlrng),
      SDT_SYSIGT, SEL_KPL, 0);
 }


 setidt(IPI_INVLCACHE, pti ? IDTVEC(invlcache_pti) : IDTVEC(invlcache),
     SDT_SYSIGT, SEL_KPL, 0);


 setidt(IPI_RENDEZVOUS, pti ? IDTVEC(rendezvous_pti) :
     IDTVEC(rendezvous), SDT_SYSIGT, SEL_KPL, 0);


 setidt(IPI_BITMAP_VECTOR, pti ? IDTVEC(ipi_intr_bitmap_handler_pti) :
     IDTVEC(ipi_intr_bitmap_handler), SDT_SYSIGT, SEL_KPL, 0);


 setidt(IPI_STOP, pti ? IDTVEC(cpustop_pti) : IDTVEC(cpustop),
     SDT_SYSIGT, SEL_KPL, 0);


 setidt(IPI_SUSPEND, pti ? IDTVEC(cpususpend_pti) : IDTVEC(cpususpend),
     SDT_SYSIGT, SEL_KPL, 0);


 if (boot_cpu_id == -1) {
  boot_cpu_id = PCPU_GET(apic_id);
  cpu_info[boot_cpu_id].cpu_bsp = 1;
 } else
  KASSERT(boot_cpu_id == PCPU_GET(apic_id),
      ("BSP's APIC ID doesn't match boot_cpu_id"));


 topo_probe();

 assign_cpu_ids();


 init_ops.start_all_aps();

 set_interrupt_apic_ids();
}
