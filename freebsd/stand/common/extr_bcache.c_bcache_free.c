
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache {int dummy; } ;


 int bcache_free_instance (struct bcache*) ;
 int bcache_units ;

void
bcache_free(void *cache)
{
    struct bcache *bc = cache;

    if (bc == ((void*)0))
 return;

    bcache_free_instance(bc);
    bcache_units--;
}
