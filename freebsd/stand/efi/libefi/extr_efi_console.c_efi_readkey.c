
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* ReadKeyStroke ) (TYPE_1__*,int *) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_INPUT_KEY ;


 scalar_t__ EFI_SUCCESS ;
 TYPE_1__* conin ;
 int keybuf_inschar (int *) ;
 scalar_t__ stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static bool
efi_readkey(void)
{
 EFI_STATUS status;
 EFI_INPUT_KEY key;

 status = conin->ReadKeyStroke(conin, &key);
 if (status == EFI_SUCCESS) {
  keybuf_inschar(&key);
  return (1);
 }
 return (0);
}
