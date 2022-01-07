
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRITICAL_ASSERT (int ) ;
 scalar_t__ PCPU_GET (int ) ;
 int bcast_tlbi_workaround ;
 int curthread ;
 int efi_ttbr0 ;
 int invalidate_local_icache () ;
 int set_ttbr0 (int ) ;

int
efi_arch_enter(void)
{

 CRITICAL_ASSERT(curthread);






 set_ttbr0(efi_ttbr0);
 if (PCPU_GET(bcast_tlbi_workaround) != 0)
  invalidate_local_icache();

 return (0);
}
