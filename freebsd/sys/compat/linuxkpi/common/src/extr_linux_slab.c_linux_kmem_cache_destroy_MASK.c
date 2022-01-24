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
struct linux_kmem_cache {int cache_flags; int /*<<< orphan*/  cache_zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_KMALLOC ; 
 int SLAB_TYPESAFE_BY_RCU ; 
 int /*<<< orphan*/  FUNC0 (struct linux_kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4(struct linux_kmem_cache *c)
{
	if (FUNC3(c->cache_flags & SLAB_TYPESAFE_BY_RCU)) {
		/* make sure all free callbacks have been called */
		FUNC1();
	}

	FUNC2(c->cache_zone);
	FUNC0(c, M_KMALLOC);
}