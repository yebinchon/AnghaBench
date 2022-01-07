
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_dwords(void *data, uint32_t length)
{
 uint32_t *p;
 uint32_t i, j;

 p = (uint32_t *)data;
 length /= sizeof(uint32_t);

 for (i = 0; i < length; i+=8) {
  printf("%03x: ", i*4);
  for (j = 0; j < 8; j++)
   printf("%08x ", p[i+j]);
  printf("\n");
 }

 printf("\n");
}
