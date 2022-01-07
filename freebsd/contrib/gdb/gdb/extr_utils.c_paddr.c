
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_ADDR_BIT ;
 char* phex (int ,int) ;

char *
paddr (CORE_ADDR addr)
{
  return phex (addr, TARGET_ADDR_BIT / 8);
}
