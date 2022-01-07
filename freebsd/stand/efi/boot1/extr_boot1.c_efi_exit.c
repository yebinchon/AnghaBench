
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Exit ) (int ,int ,int ,int *) ;} ;
typedef int EFI_STATUS ;


 TYPE_1__* BS ;
 int IH ;
 int stub1 (int ,int ,int ,int *) ;

void
efi_exit(EFI_STATUS s)
{
 BS->Exit(IH, s, 0, ((void*)0));
}
