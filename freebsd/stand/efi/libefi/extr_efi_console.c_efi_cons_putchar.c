
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch ;


 int RB_SERIAL ;
 int * buffer ;
 int efi_cons_efiputchar (int) ;
 int input_byte (unsigned char) ;
 int mode ;
 int teken ;
 int teken_input (int *,unsigned char*,int) ;

void
efi_cons_putchar(int c)
{
 unsigned char ch = c;

 if ((mode & RB_SERIAL) != 0) {
  input_byte(ch);
  return;
 }

 if (buffer != ((void*)0))
  teken_input(&teken, &ch, sizeof (ch));
 else
  efi_cons_efiputchar(c);
}
