
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* OutputString ) (TYPE_1__*,char*) ;int (* TestString ) (TYPE_1__*,char*) ;} ;
typedef int EFI_STATUS ;
typedef char CHAR16 ;


 scalar_t__ EFI_ERROR (int ) ;
 TYPE_1__* conout ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;

void
efi_cons_efiputchar(int c)
{
 CHAR16 buf[2];
 EFI_STATUS status;

 buf[0] = c;
        buf[1] = 0;

 status = conout->TestString(conout, buf);
 if (EFI_ERROR(status))
  buf[0] = '?';
 conout->OutputString(conout, buf);
}
