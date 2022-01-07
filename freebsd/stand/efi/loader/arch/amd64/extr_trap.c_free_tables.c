
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amd64tss {int dummy; } ;
struct TYPE_4__ {int (* FreePages ) (scalar_t__,int) ;} ;
struct TYPE_3__ {int rd_limit; } ;


 TYPE_2__* BS ;
 int EFI_SIZE_TO_PAGES (int) ;
 scalar_t__ exc_stack_pa ;
 TYPE_1__ fw_idt ;
 scalar_t__ ist ;
 scalar_t__ lidt_pa ;
 scalar_t__ loader_gdt_pa ;
 scalar_t__ loader_tss ;
 int stub1 (scalar_t__,int) ;
 int stub2 (scalar_t__,int) ;
 int stub3 (scalar_t__,int) ;
 int stub4 (scalar_t__,int) ;
 scalar_t__ tss_fw_seg ;
 scalar_t__ tss_pa ;

__attribute__((used)) static void
free_tables(void)
{

 if (lidt_pa != 0) {
  BS->FreePages(lidt_pa, EFI_SIZE_TO_PAGES(fw_idt.rd_limit));
  lidt_pa = 0;
 }
 if (exc_stack_pa != 0) {
  BS->FreePages(exc_stack_pa, 1);
  exc_stack_pa = 0;
 }
 if (tss_pa != 0 && tss_fw_seg == 0) {
  BS->FreePages(tss_pa, EFI_SIZE_TO_PAGES(sizeof(struct
      amd64tss)));
  tss_pa = 0;
 }
 if (loader_gdt_pa != 0) {
  BS->FreePages(tss_pa, 2);
  loader_gdt_pa = 0;
 }
 ist = 0;
 loader_tss = 0;
}
