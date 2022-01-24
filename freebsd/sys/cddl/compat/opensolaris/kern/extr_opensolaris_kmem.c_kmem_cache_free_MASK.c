#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kc_size; int /*<<< orphan*/ * kc_destructor; int /*<<< orphan*/  kc_zone; } ;
typedef  TYPE_1__ kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,TYPE_1__*) ; 

void
FUNC3(kmem_cache_t *cache, void *buf)
{
#if defined(_KERNEL) && !defined(KMEM_DEBUG)
	uma_zfree_arg(cache->kc_zone, buf, cache);
#else
	if (cache->kc_destructor != NULL)
		FUNC1(buf, cache->kc_size, cache);
	FUNC0(buf, cache->kc_size);
#endif
}