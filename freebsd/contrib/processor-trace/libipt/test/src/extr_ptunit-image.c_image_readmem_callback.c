
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct pt_asid {int dummy; } ;


 int pte_internal ;
 int pte_invalid ;
 int pte_nomap ;

__attribute__((used)) static int image_readmem_callback(uint8_t *buffer, size_t size,
      const struct pt_asid *asid,
      uint64_t ip, void *context)
{
 const uint8_t *memory;
 size_t idx;

 (void) asid;

 if (!buffer)
  return -pte_invalid;


 if (ip < 0x3000ull)
  return -pte_nomap;

 ip -= 0x3000ull;

 memory = (const uint8_t *) context;
 if (!memory)
  return -pte_internal;

 for (idx = 0; idx < size; ++idx)
  buffer[idx] = memory[ip + idx];

 return (int) idx;
}
