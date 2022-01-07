
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_bytes(void *data, uint32_t length)
{
 uint32_t i, j;
 uint8_t *p, *end;

 end = (uint8_t *)data + length;

 for (i = 0; i < length; i++) {
  p = (uint8_t *)data + (i*16);
  printf("%03x: ", i*16);
  for (j = 0; j < 16 && p < end; j++)
   printf("%02x ", *p++);
  if (p >= end)
   break;
  printf("\n");
 }
 printf("\n");
}
