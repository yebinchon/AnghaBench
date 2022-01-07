
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int printf (char*,...) ;
 int putchar (char) ;

void
print_formatted(uint8_t *buf, uint32_t len)
{
  int i, j;

  for (j = 0; j < len; j += 16)
    {
      printf("%02x: ", j);

      for (i = 0; i < 16 && i + j < len; i++)
 printf("%02x ", buf[i + j]);
      printf("  ");
      for (i = 0; i < 16 && i + j < len; i++)
 {
   uint8_t c = buf[i + j];
   if(c >= ' ' && c <= '~')
     printf("%c", (char)c);
   else
     putchar('.');
 }
      putchar('\n');
    }
}
