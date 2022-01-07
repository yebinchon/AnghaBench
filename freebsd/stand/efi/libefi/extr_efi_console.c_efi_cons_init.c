
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* OpenProtocol ) (int ,int *,void**,int ,int *,int ) ;} ;
struct TYPE_6__ {int ConsoleInHandle; int * ConIn; TYPE_1__* ConOut; } ;
struct TYPE_5__ {int (* EnableCursor ) (TYPE_1__*,int ) ;} ;
typedef scalar_t__ EFI_STATUS ;


 TYPE_4__* BS ;
 int EFI_OPEN_PROTOCOL_GET_PROTOCOL ;
 scalar_t__ EFI_SUCCESS ;
 int IH ;
 TYPE_3__* ST ;
 int TRUE ;
 int * conin ;
 int * coninex ;
 TYPE_1__* conout ;
 scalar_t__ efi_cons_update_mode () ;
 int simple_input_ex_guid ;
 int stub1 (TYPE_1__*,int ) ;
 scalar_t__ stub2 (int ,int *,void**,int ,int *,int ) ;

__attribute__((used)) static int
efi_cons_init(int arg)
{
 EFI_STATUS status;

 if (conin != ((void*)0))
  return (0);

 conout = ST->ConOut;
 conin = ST->ConIn;

 conout->EnableCursor(conout, TRUE);
 status = BS->OpenProtocol(ST->ConsoleInHandle, &simple_input_ex_guid,
     (void **)&coninex, IH, ((void*)0), EFI_OPEN_PROTOCOL_GET_PROTOCOL);
 if (status != EFI_SUCCESS)
  coninex = ((void*)0);

 if (efi_cons_update_mode())
  return (0);

 return (1);
}
