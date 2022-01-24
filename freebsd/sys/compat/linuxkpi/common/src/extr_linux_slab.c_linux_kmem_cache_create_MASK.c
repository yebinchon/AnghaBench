#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct linux_kmem_rcu {int dummy; } ;
struct linux_kmem_cache {unsigned int cache_flags; size_t cache_size; int /*<<< orphan*/ * cache_ctor; void* cache_zone; } ;
typedef  int /*<<< orphan*/  linux_kmem_ctor_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  M_KMALLOC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 unsigned int SLAB_HWCACHE_ALIGN ; 
 unsigned int SLAB_TYPESAFE_BY_RCU ; 
 size_t UMA_ALIGN_CACHE ; 
 int /*<<< orphan*/  UMA_ZONE_ZINIT ; 
 int /*<<< orphan*/ * linux_kmem_ctor ; 
 struct linux_kmem_cache* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

struct linux_kmem_cache *
FUNC3(const char *name, size_t size, size_t align,
    unsigned flags, linux_kmem_ctor_t *ctor)
{
	struct linux_kmem_cache *c;

	c = FUNC1(sizeof(*c), M_KMALLOC, M_WAITOK);

	if (flags & SLAB_HWCACHE_ALIGN)
		align = UMA_ALIGN_CACHE;
	else if (align != 0)
		align--;

	if (flags & SLAB_TYPESAFE_BY_RCU) {
		/* make room for RCU structure */
		size = FUNC0(size, sizeof(void *));
		size += sizeof(struct linux_kmem_rcu);

		/* create cache_zone */
		c->cache_zone = FUNC2(name, size,
		    linux_kmem_ctor, NULL, NULL, NULL,
		    align, UMA_ZONE_ZINIT);
	} else {
		/* create cache_zone */
		c->cache_zone = FUNC2(name, size,
		    ctor ? linux_kmem_ctor : NULL, NULL,
		    NULL, NULL, align, 0);
	}

	c->cache_flags = flags;
	c->cache_ctor = ctor;
	c->cache_size = size;
	return (c);
}