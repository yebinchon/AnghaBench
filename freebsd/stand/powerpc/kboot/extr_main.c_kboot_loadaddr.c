
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;


 scalar_t__ LOAD_ELF ;
 int PAGE_SIZE ;
 scalar_t__ kboot_get_phys_load_segment () ;
 int roundup (int ,int ) ;

uint64_t
kboot_loadaddr(u_int type, void *data, uint64_t addr)
{

 if (type == LOAD_ELF)
  addr = roundup(addr, PAGE_SIZE);
 else
  addr += kboot_get_phys_load_segment();

 return (addr);
}
