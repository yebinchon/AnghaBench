
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINTN ;
struct TYPE_6__ {int (* EnableCursor ) (TYPE_2__*,int ) ;TYPE_1__* Mode; int (* QueryMode ) (TYPE_2__*,int ,int *,int *) ;} ;
struct TYPE_5__ {int CursorColumn; int Mode; } ;


 int TRUE ;
 TYPE_2__* conout ;
 int curx ;
 int cury ;
 int efi_cons_efiputchar (int) ;
 int stub1 (TYPE_2__*,int ,int *,int *) ;
 int stub2 (TYPE_2__*,int ) ;

__attribute__((used)) static void
efi_cons_rawputchar(int c)
{
 int i;
 UINTN x, y;
 conout->QueryMode(conout, conout->Mode->Mode, &x, &y);

 if (c == '\t') {
  int n;

  n = 8 - ((conout->Mode->CursorColumn + 8) % 8);
  for (i = 0; i < n; i++)
   efi_cons_rawputchar(' ');
 } else {

  if (c == '\n')
   efi_cons_efiputchar('\r');
  efi_cons_efiputchar(c);
 }
 conout->EnableCursor(conout, TRUE);
}
