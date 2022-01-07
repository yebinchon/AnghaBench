
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_kmem_rcu {struct linux_kmem_cache* cache; } ;
struct linux_kmem_cache {int cache_flags; int (* cache_ctor ) (void*) ;} ;


 struct linux_kmem_rcu* LINUX_KMEM_TO_RCU (struct linux_kmem_cache*,void*) ;
 int SLAB_TYPESAFE_BY_RCU ;
 scalar_t__ likely (int ) ;
 int stub1 (void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
linux_kmem_ctor(void *mem, int size, void *arg, int flags)
{
 struct linux_kmem_cache *c = arg;

 if (unlikely(c->cache_flags & SLAB_TYPESAFE_BY_RCU)) {
  struct linux_kmem_rcu *rcu = LINUX_KMEM_TO_RCU(c, mem);


  rcu->cache = c;
 }


 if (likely(c->cache_ctor != ((void*)0)))
  c->cache_ctor(mem);

 return (0);
}
