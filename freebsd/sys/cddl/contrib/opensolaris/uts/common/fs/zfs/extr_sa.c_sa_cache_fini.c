
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (scalar_t__) ;
 scalar_t__ sa_cache ;

void
sa_cache_fini(void)
{
 if (sa_cache)
  kmem_cache_destroy(sa_cache);
}
