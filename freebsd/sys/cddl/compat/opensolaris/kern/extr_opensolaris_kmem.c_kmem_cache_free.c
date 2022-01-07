
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kc_size; int * kc_destructor; int kc_zone; } ;
typedef TYPE_1__ kmem_cache_t ;


 int kmem_free (void*,int ) ;
 int kmem_std_destructor (void*,int ,TYPE_1__*) ;
 int uma_zfree_arg (int ,void*,TYPE_1__*) ;

void
kmem_cache_free(kmem_cache_t *cache, void *buf)
{



 if (cache->kc_destructor != ((void*)0))
  kmem_std_destructor(buf, cache->kc_size, cache);
 kmem_free(buf, cache->kc_size);

}
