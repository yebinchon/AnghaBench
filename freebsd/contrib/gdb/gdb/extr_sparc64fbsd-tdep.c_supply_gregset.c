
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_regcache ;
 int sparc64_supply_gregset (int *,int ,int,void const*) ;
 int sparc64fbsd_gregset ;

void
supply_gregset (const void *gregs)
{
  sparc64_supply_gregset (&sparc64fbsd_gregset, current_regcache, -1, gregs);
}
