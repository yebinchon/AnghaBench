
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_short ;
typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int u_char ;


 int BIOS_RESET ;
 int BIOS_WARM ;
 int CMOS_DATA ;
 int CMOS_REG ;
 int CPU_SET (int,int *) ;
 int DOMAINSET_PREF (int) ;
 int DPCPU_SIZE ;
 int MTX_SPIN ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PG_PS ;
 int PG_RW ;
 int PG_U ;
 int PG_V ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 scalar_t__ WARMBOOT_OFF ;
 scalar_t__ WARMBOOT_SEG ;
 int WARMBOOT_TARGET ;
 int acpi_pxm_get_cpu_locality (int) ;
 int all_cpus ;
 int ap_boot_mtx ;
 int bcopy (int ,void*,int ) ;
 int bootAP ;
 int bootMP_size ;
 char* bootSTK ;
 int boot_address ;
 void** bootstacks ;
 int* cpu_apic_ids ;
 char* dbg_stack ;
 char* doublefault_stack ;
 void* dpcpu ;
 int inb (int ) ;
 scalar_t__ kmem_malloc (int,int) ;
 scalar_t__ kmem_malloc_domainset (int ,int,int) ;
 int kstack_pages ;
 char* mce_stack ;
 int mp_naps ;
 int mp_ncpus ;
 int mp_realloc_pcpu (int,int) ;
 int mptramp_pagetables ;
 int mptramp_start ;
 int mtx_init (int *,char*,int *,int ) ;
 char* nmi_stack ;
 int outb (int ,int ) ;
 int panic (char*,int,int) ;
 int start_ap (int) ;
 int vm_ndomains ;

int
native_start_all_aps(void)
{
 u_int64_t *pt4, *pt3, *pt2;
 u_int32_t mpbioswarmvec;
 int apic_id, cpu, domain, i;
 u_char mpbiosreason;

 mtx_init(&ap_boot_mtx, "ap boot", ((void*)0), MTX_SPIN);


 bcopy(mptramp_start, (void *)PHYS_TO_DMAP(boot_address), bootMP_size);


 pt4 = (uint64_t *)PHYS_TO_DMAP(mptramp_pagetables);
 pt3 = pt4 + (PAGE_SIZE) / sizeof(u_int64_t);
 pt2 = pt3 + (PAGE_SIZE) / sizeof(u_int64_t);


 for (i = 0; i < 512; i++) {

  pt4[i] = (u_int64_t)(uintptr_t)(mptramp_pagetables + PAGE_SIZE);
  pt4[i] |= PG_V | PG_RW | PG_U;


  pt3[i] = (u_int64_t)(uintptr_t)(mptramp_pagetables + (2 * PAGE_SIZE));
  pt3[i] |= PG_V | PG_RW | PG_U;


  pt2[i] = i * (2 * 1024 * 1024);
  pt2[i] |= PG_V | PG_RW | PG_PS | PG_U;
 }


 mpbioswarmvec = *((u_int32_t *) WARMBOOT_OFF);
 outb(CMOS_REG, BIOS_RESET);
 mpbiosreason = inb(CMOS_DATA);


 *((volatile u_short *) WARMBOOT_OFF) = WARMBOOT_TARGET;
 *((volatile u_short *) WARMBOOT_SEG) = (boot_address >> 4);
 outb(CMOS_REG, BIOS_RESET);
 outb(CMOS_DATA, BIOS_WARM);
 domain = 0;
 for (cpu = 1; cpu < mp_ncpus; cpu++) {
  apic_id = cpu_apic_ids[cpu];





  bootstacks[cpu] = (void *)kmem_malloc(kstack_pages * PAGE_SIZE,
      M_WAITOK | M_ZERO);
  doublefault_stack = (char *)kmem_malloc(PAGE_SIZE, M_WAITOK |
      M_ZERO);
  mce_stack = (char *)kmem_malloc(PAGE_SIZE, M_WAITOK | M_ZERO);
  nmi_stack = (char *)kmem_malloc_domainset(
      DOMAINSET_PREF(domain), PAGE_SIZE, M_WAITOK | M_ZERO);
  dbg_stack = (char *)kmem_malloc_domainset(
      DOMAINSET_PREF(domain), PAGE_SIZE, M_WAITOK | M_ZERO);
  dpcpu = (void *)kmem_malloc_domainset(DOMAINSET_PREF(domain),
      DPCPU_SIZE, M_WAITOK | M_ZERO);

  bootSTK = (char *)bootstacks[cpu] +
      kstack_pages * PAGE_SIZE - 8;
  bootAP = cpu;


  if (!start_ap(apic_id)) {

   *(u_int32_t *) WARMBOOT_OFF = mpbioswarmvec;
   panic("AP #%d (PHY# %d) failed!", cpu, apic_id);
  }

  CPU_SET(cpu, &all_cpus);
 }


 *(u_int32_t *) WARMBOOT_OFF = mpbioswarmvec;

 outb(CMOS_REG, BIOS_RESET);
 outb(CMOS_DATA, mpbiosreason);


 return (mp_naps);
}
