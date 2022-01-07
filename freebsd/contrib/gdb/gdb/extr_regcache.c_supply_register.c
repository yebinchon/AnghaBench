
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_CLEAN_UP_REGISTER_VALUE (int,int ) ;
 int current_regcache ;
 int regcache_raw_supply (int ,int,void const*) ;
 int register_buffer (int ,int) ;

void
supply_register (int regnum, const void *val)
{
  regcache_raw_supply (current_regcache, regnum, val);
}
