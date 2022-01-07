
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Exit ) (int ,int ,int ,int *) ;int (* FreePages ) (int ,int ) ;} ;
typedef int EFI_STATUS ;


 TYPE_1__* BS ;
 int EFI_SIZE_TO_PAGES (int ) ;
 int IH ;
 int heap ;
 int heapsize ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int ,int *) ;

void
efi_exit(EFI_STATUS exit_code)
{

 BS->FreePages(heap, EFI_SIZE_TO_PAGES(heapsize));
 BS->Exit(IH, exit_code, 0, ((void*)0));
}
