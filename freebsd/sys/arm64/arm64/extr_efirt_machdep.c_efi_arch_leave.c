
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCPU_GET (int ) ;
 int bcast_tlbi_workaround ;
 int curpmap ;
 int invalidate_local_icache () ;
 int pmap_to_ttbr0 (scalar_t__) ;
 int set_ttbr0 (int ) ;

void
efi_arch_leave(void)
{
 __asm __volatile(
     "mrs x18, tpidr_el1	\n"
 );
 set_ttbr0(pmap_to_ttbr0(PCPU_GET(curpmap)));
 if (PCPU_GET(bcast_tlbi_workaround) != 0)
  invalidate_local_icache();
}
