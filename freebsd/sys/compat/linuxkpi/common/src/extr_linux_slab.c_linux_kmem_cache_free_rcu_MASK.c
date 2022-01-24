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
struct linux_kmem_rcu {int /*<<< orphan*/  rcu_head; } ;
struct linux_kmem_cache {int dummy; } ;

/* Variables and functions */
 struct linux_kmem_rcu* FUNC0 (struct linux_kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_kmem_cache_free_rcu_callback ; 

void
FUNC2(struct linux_kmem_cache *c, void *m)
{
	struct linux_kmem_rcu *rcu = FUNC0(c, m);

	FUNC1(&rcu->rcu_head, linux_kmem_cache_free_rcu_callback);
}