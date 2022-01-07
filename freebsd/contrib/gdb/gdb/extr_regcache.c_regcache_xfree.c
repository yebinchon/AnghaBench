
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {struct regcache* register_valid_p; struct regcache* registers; } ;


 int xfree (struct regcache*) ;

void
regcache_xfree (struct regcache *regcache)
{
  if (regcache == ((void*)0))
    return;
  xfree (regcache->registers);
  xfree (regcache->register_valid_p);
  xfree (regcache);
}
