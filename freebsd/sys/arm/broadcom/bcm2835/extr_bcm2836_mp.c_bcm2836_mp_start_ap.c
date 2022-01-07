
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ uint32_t ;
typedef int platform_t ;


 int ARM_LOCAL_BASE ;
 int ARM_LOCAL_SIZE ;
 scalar_t__ BSRD4 (int ) ;
 int BSWR4 (int ,scalar_t__) ;
 int CPU_SET (int,int *) ;
 int DELAY (int) ;
 int DPRINTF (char*) ;
 int MBOX0CLR_CORE (int) ;
 int MBOX3CLR_CORE (int) ;
 int MBOX3SET_CORE (int) ;
 int all_cpus ;
 int bs_periph ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 scalar_t__ pmap_kextract (int ) ;
 int printf (char*,int) ;
 int sev () ;
 int wmb () ;

void
bcm2836_mp_start_ap(platform_t plat)
{
 uint32_t val;
 int i, retry;

 DPRINTF("platform_mp_start_ap\n");


 if (bus_space_map(fdtbus_bs_tag, ARM_LOCAL_BASE, ARM_LOCAL_SIZE,
     0, &bs_periph) != 0)
  panic("can't map local peripheral\n");
 for (i = 0; i < mp_ncpus; i++) {

  BSWR4(MBOX0CLR_CORE(i), 0xffffffff);
  BSWR4(MBOX3CLR_CORE(i), 0xffffffff);
 }
 wmb();
 dcache_wbinv_poc_all();


 for (i = 1; i < mp_ncpus; i++) {

  BSWR4(MBOX3SET_CORE(i),
      (uint32_t)pmap_kextract((vm_offset_t)mpentry));

  dsb();
  sev();


  retry = 1000;
  do {

   val = BSRD4(MBOX3CLR_CORE(i));
   if (val == 0)
    break;
   DELAY(100);
   retry--;
   if (retry <= 0) {
    printf("can't start for CPU%d\n", i);
    break;
   }
  } while (1);


  dsb();
  sev();


  CPU_SET(i, &all_cpus);
 }
}
