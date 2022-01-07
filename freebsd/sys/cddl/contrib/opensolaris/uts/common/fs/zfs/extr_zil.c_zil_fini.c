
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int zil_lwb_cache ;
 int zil_zcw_cache ;

void
zil_fini(void)
{
 kmem_cache_destroy(zil_zcw_cache);
 kmem_cache_destroy(zil_lwb_cache);
}
