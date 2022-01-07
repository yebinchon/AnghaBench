
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int ASSERT (int) ;

__attribute__((used)) static uint64_t
ldv(int len, const void *addr)
{
 switch (len) {
 case 1:
  return (*(uint8_t *)addr);
 case 2:
  return (*(uint16_t *)addr);
 case 4:
  return (*(uint32_t *)addr);
 case 8:
  return (*(uint64_t *)addr);
 }
 ASSERT(!"bad int len");
 return (0xFEEDFACEDEADBEEFULL);
}
