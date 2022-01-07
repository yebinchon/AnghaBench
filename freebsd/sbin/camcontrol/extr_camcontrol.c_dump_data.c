
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;


 int printf (char*,...) ;

__attribute__((used)) static void
dump_data(uint16_t *ptr, uint32_t len)
{
 u_int i;

 for (i = 0; i < len / 2; i++) {
  if ((i % 8) == 0)
   printf(" %3d: ", i);
  printf("%04hx ", ptr[i]);
  if ((i % 8) == 7)
   printf("\n");
 }
 if ((i % 8) != 7)
  printf("\n");
}
