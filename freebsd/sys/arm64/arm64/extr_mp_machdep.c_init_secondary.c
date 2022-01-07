
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct pcpu {int pc_curpmap; TYPE_1__* pc_idlethread; int pc_curpcb; TYPE_1__* pc_curthread; } ;
typedef int pmap_t ;
struct TYPE_2__ {int td_pcb; } ;


 int KASSERT (int,char*) ;
 int * PCPU_GET (int ) ;
 scalar_t__ READ_SPECIALREG (int ) ;
 struct pcpu* __pcpu ;
 int ap_boot_mtx ;
 int aps_ready ;
 int atomic_add_rel_32 (scalar_t__*,int) ;
 int atomic_store_rel_int (int *,int) ;
 int cpu_initclocks_ap () ;
 int dbg_init () ;
 int identify_cpu () ;
 int idlethread ;
 int install_cpu_errata () ;
 int intr_enable () ;
 int intr_pic_init_secondary () ;
 scalar_t__ mp_ncpus ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pan_enable () ;
 int panic (char*) ;
 scalar_t__ pmap_to_ttbr0 (int ) ;
 int sched_throw (int *) ;
 scalar_t__ smp_cpus ;
 int smp_started ;
 int ttbr0_el1 ;
 int vfp_init () ;
 int vmspace0 ;
 int vmspace_pmap (int *) ;

void
init_secondary(uint64_t cpu)
{
 struct pcpu *pcpup;
 pmap_t pmap0;

 pcpup = &__pcpu[cpu];




 __asm __volatile(
     "mov x18, %0 \n"
     "msr tpidr_el1, %0" :: "r"(pcpup));


 while (!aps_ready)
  __asm __volatile("wfe");


 KASSERT(PCPU_GET(idlethread) != ((void*)0), ("no idle thread"));
 pcpup->pc_curthread = pcpup->pc_idlethread;
 pcpup->pc_curpcb = pcpup->pc_idlethread->td_pcb;


 pmap0 = vmspace_pmap(&vmspace0);
 KASSERT(pmap_to_ttbr0(pmap0) == READ_SPECIALREG(ttbr0_el1),
     ("pmap0 doesn't match cpu %ld's ttbr0", cpu));
 pcpup->pc_curpmap = pmap0;






 identify_cpu();
 install_cpu_errata();

 intr_pic_init_secondary();


 cpu_initclocks_ap();





 dbg_init();
 pan_enable();


 intr_enable();

 mtx_lock_spin(&ap_boot_mtx);

 atomic_add_rel_32(&smp_cpus, 1);

 if (smp_cpus == mp_ncpus) {

  atomic_store_rel_int(&smp_started, 1);
 }

 mtx_unlock_spin(&ap_boot_mtx);


 sched_throw(((void*)0));

 panic("scheduler returned us to init_secondary");

}
