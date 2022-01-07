
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kc_size; int * kc_constructor; int kc_zone; } ;
typedef TYPE_1__ kmem_cache_t ;


 void* kmem_alloc (int ,int) ;
 int kmem_std_constructor (void*,int ,TYPE_1__*,int) ;
 void* uma_zalloc_arg (int ,TYPE_1__*,int) ;

void *
kmem_cache_alloc(kmem_cache_t *cache, int flags)
{



 void *p;

 p = kmem_alloc(cache->kc_size, flags);
 if (p != ((void*)0) && cache->kc_constructor != ((void*)0))
  kmem_std_constructor(p, cache->kc_size, cache, flags);
 return (p);

}
