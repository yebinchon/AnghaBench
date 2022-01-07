
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef void* uint64_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;


 int ASSERT (int) ;

__attribute__((used)) static void
stv(int len, void *addr, uint64_t value)
{
 switch (len) {
 case 1:
  *(uint8_t *)addr = value;
  return;
 case 2:
  *(uint16_t *)addr = value;
  return;
 case 4:
  *(uint32_t *)addr = value;
  return;
 case 8:
  *(uint64_t *)addr = value;
  return;
 }
 ASSERT(!"bad int len");
}
