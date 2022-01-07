
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_kmem_rcu {int dummy; } ;
struct linux_kmem_cache {unsigned int cache_flags; size_t cache_size; int * cache_ctor; void* cache_zone; } ;
typedef int linux_kmem_ctor_t ;


 size_t ALIGN (size_t,int) ;
 int M_KMALLOC ;
 int M_WAITOK ;
 unsigned int SLAB_HWCACHE_ALIGN ;
 unsigned int SLAB_TYPESAFE_BY_RCU ;
 size_t UMA_ALIGN_CACHE ;
 int UMA_ZONE_ZINIT ;
 int * linux_kmem_ctor ;
 struct linux_kmem_cache* malloc (int,int ,int ) ;
 void* uma_zcreate (char const*,size_t,int *,int *,int *,int *,size_t,int ) ;

struct linux_kmem_cache *
linux_kmem_cache_create(const char *name, size_t size, size_t align,
    unsigned flags, linux_kmem_ctor_t *ctor)
{
 struct linux_kmem_cache *c;

 c = malloc(sizeof(*c), M_KMALLOC, M_WAITOK);

 if (flags & SLAB_HWCACHE_ALIGN)
  align = UMA_ALIGN_CACHE;
 else if (align != 0)
  align--;

 if (flags & SLAB_TYPESAFE_BY_RCU) {

  size = ALIGN(size, sizeof(void *));
  size += sizeof(struct linux_kmem_rcu);


  c->cache_zone = uma_zcreate(name, size,
      linux_kmem_ctor, ((void*)0), ((void*)0), ((void*)0),
      align, UMA_ZONE_ZINIT);
 } else {

  c->cache_zone = uma_zcreate(name, size,
      ctor ? linux_kmem_ctor : ((void*)0), ((void*)0),
      ((void*)0), ((void*)0), align, 0);
 }

 c->cache_flags = flags;
 c->cache_ctor = ctor;
 c->cache_size = size;
 return (c);
}
