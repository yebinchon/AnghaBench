
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* CheckEvent ) (int *) ;} ;
struct TYPE_5__ {int * WaitForKey; } ;
struct TYPE_4__ {int * WaitForKeyEx; } ;
typedef scalar_t__ EFI_STATUS ;


 TYPE_3__* BS ;
 scalar_t__ EFI_SUCCESS ;
 TYPE_2__* conin ;
 TYPE_1__* coninex ;
 int efi_readkey () ;
 int efi_readkey_ex () ;
 int key_pending ;
 scalar_t__ keybuf_ischar () ;
 scalar_t__ stub1 (int *) ;
 scalar_t__ stub2 (int *) ;

int
efi_cons_poll(void)
{
 EFI_STATUS status;

 if (keybuf_ischar() || key_pending)
  return (1);






 if (coninex != ((void*)0)) {
  if (coninex->WaitForKeyEx == ((void*)0)) {
   key_pending = efi_readkey_ex();
  } else {
   status = BS->CheckEvent(coninex->WaitForKeyEx);
   key_pending = status == EFI_SUCCESS;
  }
 } else {
  if (conin->WaitForKey == ((void*)0)) {
   key_pending = efi_readkey();
  } else {
   status = BS->CheckEvent(conin->WaitForKey);
   key_pending = status == EFI_SUCCESS;
  }
 }

 return (key_pending);
}
