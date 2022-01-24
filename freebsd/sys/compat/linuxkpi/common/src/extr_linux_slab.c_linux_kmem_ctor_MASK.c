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
struct linux_kmem_rcu {struct linux_kmem_cache* cache; } ;
struct linux_kmem_cache {int cache_flags; int /*<<< orphan*/  (* cache_ctor ) (void*) ;} ;

/* Variables and functions */
 struct linux_kmem_rcu* FUNC0 (struct linux_kmem_cache*,void*) ; 
 int SLAB_TYPESAFE_BY_RCU ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(void *mem, int size, void *arg, int flags)
{
	struct linux_kmem_cache *c = arg;

	if (FUNC3(c->cache_flags & SLAB_TYPESAFE_BY_RCU)) {
		struct linux_kmem_rcu *rcu = FUNC0(c, mem);

		/* duplicate cache pointer */
		rcu->cache = c;
	}

	/* check for constructor */
	if (FUNC1(c->cache_ctor != NULL))
		c->cache_ctor(mem);

	return (0);
}