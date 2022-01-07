
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int u_long ;
typedef int u_int64_t ;
struct msgbuf {int dummy; } ;
typedef int quad_t ;
typedef int pt_entry_t ;
typedef int physmap ;
typedef int caddr_t ;
struct TYPE_2__ {int (* mp_bootaddress ) (int*,int*) ;int (* parse_memmap ) (int ,int*,int*) ;} ;


 scalar_t__ CADDR1 ;
 int* CMAP1 ;
 int FALSE ;
 int MAXMEM ;
 int Maxmem ;
 int PAGES_PER_GB ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PG_NC_PCD ;
 int PG_NC_PWT ;
 int PG_RW ;
 int PG_V ;
 int PHYS_AVAIL_ENTRIES ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int RB_VERBOSE ;
 int TRUE ;
 scalar_t__ TUNABLE_ULONG_FETCH (char*,int*) ;
 scalar_t__ VM_GUEST_NO ;
 int atop (int) ;
 int basemem ;
 int boothowto ;
 scalar_t__ bootverbose ;
 int bzero (int*,int) ;
 int* dump_avail ;
 scalar_t__ getenv_quad (char*,int*) ;
 TYPE_1__ init_ops ;
 int invltlb () ;
 scalar_t__ kernphys ;
 struct msgbuf* msgbufp ;
 int msgbufsize ;
 int* phys_avail ;
 scalar_t__ physmem ;
 int pmap_bootstrap (int*) ;
 int printf (char*,...) ;
 int ptoa (int) ;
 int round_page (int) ;
 int stub1 (int ,int*,int*) ;
 int stub2 (int*,int*) ;
 int trunc_page (int) ;
 scalar_t__ vm_guest ;
 int vm_phys_add_seg (int,int) ;

__attribute__((used)) static void
getmemsize(caddr_t kmdp, u_int64_t first)
{
 int i, physmap_idx, pa_indx, da_indx;
 vm_paddr_t pa, physmap[PHYS_AVAIL_ENTRIES];
 u_long physmem_start, physmem_tunable, memtest;
 pt_entry_t *pte;
 quad_t dcons_addr, dcons_size;
 int page_counter;





 vm_phys_add_seg((vm_paddr_t)kernphys, trunc_page(first));

 bzero(physmap, sizeof(physmap));
 physmap_idx = 0;

 init_ops.parse_memmap(kmdp, physmap, &physmap_idx);
 physmap_idx -= 2;




 basemem = 0;
 for (i = 0; i <= physmap_idx; i += 2) {
  if (physmap[i] <= 0xA0000) {
   basemem = physmap[i + 1] / 1024;
   break;
  }
 }
 if (basemem == 0 || basemem > 640) {
  if (bootverbose)
   printf(
  "Memory map doesn't contain a basemem segment, faking it");
  basemem = 640;
 }







 Maxmem = atop(physmap[physmap_idx + 1]);





 if (TUNABLE_ULONG_FETCH("hw.physmem", &physmem_tunable))
  Maxmem = atop(physmem_tunable);
 memtest = 0;
 TUNABLE_ULONG_FETCH("hw.memtest.tests", &memtest);





 if (Maxmem > atop(physmap[physmap_idx + 1]))
  Maxmem = atop(physmap[physmap_idx + 1]);

 if (atop(physmap[physmap_idx + 1]) != Maxmem &&
     (boothowto & RB_VERBOSE))
  printf("Physical memory use set to %ldK\n", Maxmem * 4);







 if (init_ops.mp_bootaddress)
  init_ops.mp_bootaddress(physmap, &physmap_idx);


 pmap_bootstrap(&first);
 physmem_start = (vm_guest > VM_GUEST_NO ? 1 : 16) << PAGE_SHIFT;
 TUNABLE_ULONG_FETCH("hw.physmem.start", &physmem_start);
 if (physmap[0] < physmem_start) {
  if (physmem_start < PAGE_SIZE)
   physmap[0] = PAGE_SIZE;
  else if (physmem_start >= physmap[1])
   physmap[0] = round_page(physmap[1] - PAGE_SIZE);
  else
   physmap[0] = round_page(physmem_start);
 }
 pa_indx = 0;
 da_indx = 1;
 phys_avail[pa_indx++] = physmap[0];
 phys_avail[pa_indx] = physmap[0];
 dump_avail[da_indx] = physmap[0];
 pte = CMAP1;




 if (getenv_quad("dcons.addr", &dcons_addr) == 0 ||
     getenv_quad("dcons.size", &dcons_size) == 0)
  dcons_addr = 0;





 page_counter = 0;
 if (memtest != 0)
  printf("Testing system memory");
 for (i = 0; i <= physmap_idx; i += 2) {
  vm_paddr_t end;

  end = ptoa((vm_paddr_t)Maxmem);
  if (physmap[i + 1] < end)
   end = trunc_page(physmap[i + 1]);
  for (pa = round_page(physmap[i]); pa < end; pa += PAGE_SIZE) {
   int tmp, page_bad, full;
   int *ptr = (int *)CADDR1;

   full = FALSE;



   if (pa >= (vm_paddr_t)kernphys && pa < first)
    goto do_dump_avail;




   if (dcons_addr > 0
       && pa >= trunc_page(dcons_addr)
       && pa < dcons_addr + dcons_size)
    goto do_dump_avail;

   page_bad = FALSE;
   if (memtest == 0)
    goto skip_memtest;





   page_counter++;
   if ((page_counter % PAGES_PER_GB) == 0)
    printf(".");




   *pte = pa | PG_V | PG_RW | PG_NC_PWT | PG_NC_PCD;
   invltlb();

   tmp = *(int *)ptr;



   *(volatile int *)ptr = 0xaaaaaaaa;
   if (*(volatile int *)ptr != 0xaaaaaaaa)
    page_bad = TRUE;



   *(volatile int *)ptr = 0x55555555;
   if (*(volatile int *)ptr != 0x55555555)
    page_bad = TRUE;



   *(volatile int *)ptr = 0xffffffff;
   if (*(volatile int *)ptr != 0xffffffff)
    page_bad = TRUE;



   *(volatile int *)ptr = 0x0;
   if (*(volatile int *)ptr != 0x0)
    page_bad = TRUE;



   *(int *)ptr = tmp;

skip_memtest:



   if (page_bad == TRUE)
    continue;
   if (phys_avail[pa_indx] == pa) {
    phys_avail[pa_indx] += PAGE_SIZE;
   } else {
    pa_indx++;
    if (pa_indx == PHYS_AVAIL_ENTRIES) {
     printf(
  "Too many holes in the physical address space, giving up\n");
     pa_indx--;
     full = TRUE;
     goto do_dump_avail;
    }
    phys_avail[pa_indx++] = pa;
    phys_avail[pa_indx] = pa + PAGE_SIZE;
   }
   physmem++;
do_dump_avail:
   if (dump_avail[da_indx] == pa) {
    dump_avail[da_indx] += PAGE_SIZE;
   } else {
    da_indx++;
    if (da_indx == PHYS_AVAIL_ENTRIES) {
     da_indx--;
     goto do_next;
    }
    dump_avail[da_indx++] = pa;
    dump_avail[da_indx] = pa + PAGE_SIZE;
   }
do_next:
   if (full)
    break;
  }
 }
 *pte = 0;
 invltlb();
 if (memtest != 0)
  printf("\n");







 while (phys_avail[pa_indx - 1] + PAGE_SIZE +
     round_page(msgbufsize) >= phys_avail[pa_indx]) {
  physmem -= atop(phys_avail[pa_indx] - phys_avail[pa_indx - 1]);
  phys_avail[pa_indx--] = 0;
  phys_avail[pa_indx--] = 0;
 }

 Maxmem = atop(phys_avail[pa_indx]);


 phys_avail[pa_indx] -= round_page(msgbufsize);


 msgbufp = (struct msgbuf *)PHYS_TO_DMAP(phys_avail[pa_indx]);
}
