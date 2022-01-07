
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_kmem_cache {int cache_flags; int cache_zone; } ;


 int M_KMALLOC ;
 int SLAB_TYPESAFE_BY_RCU ;
 int free (struct linux_kmem_cache*,int ) ;
 int rcu_barrier () ;
 int uma_zdestroy (int ) ;
 scalar_t__ unlikely (int) ;

void
linux_kmem_cache_destroy(struct linux_kmem_cache *c)
{
 if (unlikely(c->cache_flags & SLAB_TYPESAFE_BY_RCU)) {

  rcu_barrier();
 }

 uma_zdestroy(c->cache_zone);
 free(c, M_KMALLOC);
}
