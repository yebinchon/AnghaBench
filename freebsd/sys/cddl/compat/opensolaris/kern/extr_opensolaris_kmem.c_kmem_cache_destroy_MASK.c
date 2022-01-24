#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kc_zone; } ;
typedef  TYPE_1__ kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(kmem_cache_t *cache)
{
#if defined(_KERNEL) && !defined(KMEM_DEBUG)
	uma_zdestroy(cache->kc_zone);
#endif
	FUNC0(cache, sizeof(*cache));
}