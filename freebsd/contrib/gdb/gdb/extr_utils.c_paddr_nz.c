
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_ADDR_BIT ;
 char* phex_nz (int ,int) ;

char *
paddr_nz (CORE_ADDR addr)
{
  return phex_nz (addr, TARGET_ADDR_BIT / 8);
}
