
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64tss {scalar_t__ tss_ist1; } ;
typedef int register_t ;


 int bare_lgdt (int *) ;
 int free_tables () ;
 int fw_gdt ;
 int fw_idt ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int ist ;
 int lidt (int *) ;
 scalar_t__ lidt_pa ;
 scalar_t__ loader_gdt_pa ;
 scalar_t__ loader_tss ;
 int ltr (int ) ;
 int tss_fw_seg ;
 scalar_t__ tss_pa ;

__attribute__((used)) static void
efi_unredirect_exceptions(void)
{
 register_t rfl;

 if (lidt_pa == 0)
  return;

 rfl = intr_disable();
 if (ist != 0)
  (&(((struct amd64tss *)tss_pa)->tss_ist1))[ist - 1] = 0;
 if (loader_gdt_pa != 0)
  bare_lgdt(&fw_gdt);
 if (loader_tss != 0)
  ltr(tss_fw_seg);
 lidt(&fw_idt);
 intr_restore(rfl);
 free_tables();
}
