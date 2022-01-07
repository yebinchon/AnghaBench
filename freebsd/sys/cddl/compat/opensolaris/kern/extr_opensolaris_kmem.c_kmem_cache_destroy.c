
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kc_zone; } ;
typedef TYPE_1__ kmem_cache_t ;


 int kmem_free (TYPE_1__*,int) ;
 int uma_zdestroy (int ) ;

void
kmem_cache_destroy(kmem_cache_t *cache)
{



 kmem_free(cache, sizeof(*cache));
}
