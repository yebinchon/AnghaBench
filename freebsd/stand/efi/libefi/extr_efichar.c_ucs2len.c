
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_char ;



int
ucs2len(const efi_char *str)
{
 int i;

 i = 0;
 while (*str++)
  i++;
 return (i);
}
