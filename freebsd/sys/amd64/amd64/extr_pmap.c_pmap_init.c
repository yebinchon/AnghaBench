
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vmem_size_t ;
typedef int vmem_addr_t ;
typedef TYPE_1__* vm_page_t ;
typedef int u_long ;
struct pmap_preinit_mapping {scalar_t__ va; scalar_t__ pa; scalar_t__ sz; int mode; } ;
struct TYPE_14__ {int* pm_pml4; } ;
struct TYPE_13__ {int pvc_list; int pvc_lock; } ;
struct TYPE_12__ {int ref_count; scalar_t__ phys_addr; scalar_t__ pindex; } ;


 int AMDID2_FMA4 ;
 int AMDID2_XOP ;
 int CPUID2_AESNI ;
 int CPUID2_AVX ;
 int CPUID2_SSE41 ;
 int CPUID2_SSSE3 ;
 int CPUID2_XSAVE ;
 int CPUID_SS ;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 scalar_t__ CPU_VENDOR_INTEL ;
 scalar_t__ FALSE ;
 int KASSERT (int,char*) ;
 int KERNBASE ;
 scalar_t__ KERNend ;
 scalar_t__ KPTphys ;
 int LARGEMAP_MIN_ADDRESS ;
 int LMEPML4I ;
 int LMSPML4I ;
 int MAXPAGESIZES ;
 int MTX_DEF ;
 int MTX_SPIN ;
 int M_BESTFIT ;
 int M_WAITOK ;
 scalar_t__ NBPDR ;
 int NBPML4 ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PDRSHIFT ;
 int PHYS_TO_DMAP (scalar_t__) ;
 TYPE_1__* PHYS_TO_VM_PAGE (scalar_t__) ;
 int PMAP_LOCK (TYPE_5__*) ;
 int PMAP_MEMDOM ;
 int PMAP_PREINIT_MAPPING_COUNT ;
 int PMAP_UNLOCK (TYPE_5__*) ;
 int TAILQ_INIT (int *) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 scalar_t__ VM_GUEST_NO ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int X86_PG_A ;
 int X86_PG_M ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int amd_feature2 ;
 int atop (int) ;
 scalar_t__ bootverbose ;
 int cpu_feature ;
 int cpu_feature2 ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 scalar_t__ dmaplimit ;
 int kernel_arena ;
 TYPE_5__* kernel_pmap ;
 int * large_vmem ;
 int lm_ents ;
 int mtx_init (int *,char*,int *,int ) ;
 int nkpt ;
 scalar_t__* pagesizes ;
 int panic (char*) ;
 int pg_nx ;
 int pg_ps_enabled ;
 int pmap_allow_2m_x_ept_recalculate () ;
 int pmap_change_attr (int ,scalar_t__,int ) ;
 int pmap_init_pv_table () ;
 int pmap_initialized ;
 scalar_t__ pmap_insert_pt_page (TYPE_5__*,TYPE_1__*,int) ;
 TYPE_1__* pmap_large_map_getptp_unlocked () ;
 scalar_t__ pmap_pde_pindex (int ) ;
 struct pmap_preinit_mapping* pmap_preinit_mapping ;
 int printf (char*,...) ;
 scalar_t__ ptoa (int) ;
 TYPE_3__* pv_chunks ;
 int qframe ;
 int qframe_mtx ;
 scalar_t__ vm_guest ;
 TYPE_1__* vm_page_array ;
 size_t vm_page_array_size ;
 int vm_page_blacklist_add (scalar_t__,scalar_t__) ;
 int vm_wire_add (int) ;
 int vmem_alloc (int ,int ,int,int *) ;
 int * vmem_create (char*,int ,int,int ,int ,int) ;
 int workaround_erratum383 ;

void
pmap_init(void)
{
 struct pmap_preinit_mapping *ppim;
 vm_page_t m, mpte;
 int error, i, ret, skz63;


 vm_page_blacklist_add(0, bootverbose);


 if (vm_guest == VM_GUEST_NO && cpu_vendor_id == CPU_VENDOR_INTEL &&
     CPUID_TO_FAMILY(cpu_id) == 0x6 && CPUID_TO_MODEL(cpu_id) == 0x55) {
  skz63 = 1;
  TUNABLE_INT_FETCH("hw.skz63_enable", &skz63);
  if (skz63 != 0) {
   if (bootverbose)
    printf("SKZ63: skipping 4M RAM starting "
        "at physical 1G\n");
   for (i = 0; i < atop(0x400000); i++) {
    ret = vm_page_blacklist_add(0x40000000 +
        ptoa(i), FALSE);
    if (!ret && bootverbose)
     printf("page at %#lx already used\n",
         0x40000000 + ptoa(i));
   }
  }
 }


 pmap_allow_2m_x_ept_recalculate();





 PMAP_LOCK(kernel_pmap);
 for (i = 0; i < nkpt; i++) {
  mpte = PHYS_TO_VM_PAGE(KPTphys + (i << PAGE_SHIFT));
  KASSERT(mpte >= vm_page_array &&
      mpte < &vm_page_array[vm_page_array_size],
      ("pmap_init: page table page is out of range"));
  mpte->pindex = pmap_pde_pindex(KERNBASE) + i;
  mpte->phys_addr = KPTphys + (i << PAGE_SHIFT);
  mpte->ref_count = 1;





  if (i << PDRSHIFT < KERNend &&
      pmap_insert_pt_page(kernel_pmap, mpte, 0))
   panic("pmap_init: pmap_insert_pt_page failed");
 }
 PMAP_UNLOCK(kernel_pmap);
 vm_wire_add(nkpt);
 if (vm_guest != VM_GUEST_NO && (cpu_feature & CPUID_SS) == 0 &&
     (cpu_feature2 & (CPUID2_SSSE3 | CPUID2_SSE41 | CPUID2_AESNI |
     CPUID2_AVX | CPUID2_XSAVE)) == 0 && (amd_feature2 & (AMDID2_XOP |
     AMDID2_FMA4)) == 0)
  workaround_erratum383 = 1;




 TUNABLE_INT_FETCH("vm.pmap.pg_ps_enabled", &pg_ps_enabled);
 if (pg_ps_enabled) {
  KASSERT(MAXPAGESIZES > 1 && pagesizes[1] == 0,
      ("pmap_init: can't assign to pagesizes[1]"));
  pagesizes[1] = NBPDR;
 }




 for (i = 0; i < PMAP_MEMDOM; i++) {
  mtx_init(&pv_chunks[i].pvc_lock, "pmap pv chunk list", ((void*)0), MTX_DEF);
  TAILQ_INIT(&pv_chunks[i].pvc_list);
 }
 pmap_init_pv_table();

 pmap_initialized = 1;
 for (i = 0; i < PMAP_PREINIT_MAPPING_COUNT; i++) {
  ppim = pmap_preinit_mapping + i;
  if (ppim->va == 0)
   continue;

  if (ppim->pa < dmaplimit && ppim->pa + ppim->sz <= dmaplimit) {
   (void)pmap_change_attr(PHYS_TO_DMAP(ppim->pa),
       ppim->sz, ppim->mode);
  }
  if (!bootverbose)
   continue;
  printf("PPIM %u: PA=%#lx, VA=%#lx, size=%#lx, mode=%#x\n", i,
      ppim->pa, ppim->va, ppim->sz, ppim->mode);
 }

 mtx_init(&qframe_mtx, "qfrmlk", ((void*)0), MTX_SPIN);
 error = vmem_alloc(kernel_arena, PAGE_SIZE, M_BESTFIT | M_WAITOK,
     (vmem_addr_t *)&qframe);
 if (error != 0)
  panic("qframe allocation failed");

 lm_ents = 8;
 TUNABLE_INT_FETCH("vm.pmap.large_map_pml4_entries", &lm_ents);
 if (lm_ents > LMEPML4I - LMSPML4I + 1)
  lm_ents = LMEPML4I - LMSPML4I + 1;
 if (bootverbose)
  printf("pmap: large map %u PML4 slots (%lu GB)\n",
      lm_ents, (u_long)lm_ents * (NBPML4 / 1024 / 1024 / 1024));
 if (lm_ents != 0) {
  large_vmem = vmem_create("large", LARGEMAP_MIN_ADDRESS,
      (vmem_size_t)lm_ents * NBPML4, PAGE_SIZE, 0, M_WAITOK);
  if (large_vmem == ((void*)0)) {
   printf("pmap: cannot create large map\n");
   lm_ents = 0;
  }
  for (i = 0; i < lm_ents; i++) {
   m = pmap_large_map_getptp_unlocked();
   kernel_pmap->pm_pml4[LMSPML4I + i] = X86_PG_V |
       X86_PG_RW | X86_PG_A | X86_PG_M | pg_nx |
       VM_PAGE_TO_PHYS(m);
  }
 }
}
