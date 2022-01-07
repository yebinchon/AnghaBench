
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_regcache_data {struct inferior_regcache_data* registers; } ;


 int free (struct inferior_regcache_data*) ;

void
free_register_cache (void *regcache_p)
{
  struct inferior_regcache_data *regcache
    = (struct inferior_regcache_data *) regcache_p;

  free (regcache->registers);
  free (regcache);
}
