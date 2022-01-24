#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 size_t DB_DBUF_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ dbuf_cache_max_bytes ; 
 TYPE_1__* dbuf_caches ; 
 int /*<<< orphan*/  dbuf_evict_cv ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{
	/*
	 * We check if we should evict without holding the dbuf_evict_lock,
	 * because it's OK to occasionally make the wrong decision here,
	 * and grabbing the lock results in massive lock contention.
	 */
	if (FUNC3(&dbuf_caches[DB_DBUF_CACHE].size) >
	    dbuf_cache_max_bytes) {
		if (FUNC1())
			FUNC2();
		FUNC0(&dbuf_evict_cv);
	}
}