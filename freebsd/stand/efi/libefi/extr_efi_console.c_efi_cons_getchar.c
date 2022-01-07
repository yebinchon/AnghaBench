
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * coninex ;
 scalar_t__ efi_readkey () ;
 scalar_t__ efi_readkey_ex () ;
 scalar_t__ key_pending ;
 int keybuf_getchar () ;

int
efi_cons_getchar(void)
{
 int c;

 if ((c = keybuf_getchar()) != 0)
  return (c);

 key_pending = 0;

 if (coninex == ((void*)0)) {
  if (efi_readkey())
   return (keybuf_getchar());
 } else {
  if (efi_readkey_ex())
   return (keybuf_getchar());
 }

 return (-1);
}
