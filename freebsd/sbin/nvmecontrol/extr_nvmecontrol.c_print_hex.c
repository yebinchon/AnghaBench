
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int print_bytes (void*,int) ;
 int print_dwords (void*,int) ;

void
print_hex(void *data, uint32_t length)
{
 if (length >= sizeof(uint32_t) || length % sizeof(uint32_t) == 0)
  print_dwords(data, length);
 else
  print_bytes(data, length);
}
