
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int current_regcache ;
 int regcache_cooked_read_unsigned (int ,int,int *) ;

__attribute__((used)) static CORE_ADDR
sparc_address_from_register (int regnum)
{
  ULONGEST addr;

  regcache_cooked_read_unsigned (current_regcache, regnum, &addr);
  return addr;
}
