
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_page_t ;
typedef unsigned int const uintmax_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ sf_sp; } ;
struct pcb {TYPE_1__ pcb_regs; } ;
struct TYPE_4__ {scalar_t__ td_kstack; struct pcb* td_pcb; } ;


 scalar_t__ ARM_RAS_END ;
 scalar_t__ ARM_RAS_START ;
 int ARM_TP_ADDRESS ;
 scalar_t__ USPACE_SVC_STACK_TOP ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (int ) ;
 int VM_PROT_READ ;
 scalar_t__ arm32_ptob (int ) ;
 int arm_lock_cache_line (int ) ;
 int arm_physmem_print_tables () ;
 scalar_t__ bootverbose ;
 int bufinit () ;
 int devmap_print_table () ;
 int identify_arm_cpu () ;
 int kernel_pmap ;
 int kmi ;
 int pmap_kenter_user (int ,int ) ;
 int pmap_postinit () ;
 int pmap_set_pcb_pagedir (int ,struct pcb*) ;
 int printf (char*,unsigned int const,unsigned int const) ;
 int realmem ;
 TYPE_2__ thread0 ;
 int vector_page_setprot (int ) ;
 int vm_free_count () ;
 int vm_ksubmap_init (int *) ;
 int vm_page_alloc (int *,int ,int) ;
 int vm_pager_bufferinit () ;

__attribute__((used)) static void
cpu_startup(void *dummy)
{
 struct pcb *pcb = thread0.td_pcb;
 const unsigned int mbyte = 1024 * 1024;

 vm_page_t m;


 identify_arm_cpu();

 vm_ksubmap_init(&kmi);




 printf("real memory  = %ju (%ju MB)\n",
     (uintmax_t)arm32_ptob(realmem),
     (uintmax_t)arm32_ptob(realmem) / mbyte);
 printf("avail memory = %ju (%ju MB)\n",
     (uintmax_t)arm32_ptob(vm_free_count()),
     (uintmax_t)arm32_ptob(vm_free_count()) / mbyte);
 if (bootverbose) {
  arm_physmem_print_tables();
  devmap_print_table();
 }

 bufinit();
 vm_pager_bufferinit();
 pcb->pcb_regs.sf_sp = (u_int)thread0.td_kstack +
     USPACE_SVC_STACK_TOP;
 pmap_set_pcb_pagedir(kernel_pmap, pcb);

 vector_page_setprot(VM_PROT_READ);
 pmap_postinit();




 m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NOOBJ | VM_ALLOC_ZERO);
 pmap_kenter_user(ARM_TP_ADDRESS, VM_PAGE_TO_PHYS(m));

 *(uint32_t *)ARM_RAS_START = 0;
 *(uint32_t *)ARM_RAS_END = 0xffffffff;

}
