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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * event_debug_map_lock_ ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(void)
{
#ifndef EVENT__DISABLE_THREAD_SUPPORT
#ifndef EVENT__DISABLE_DEBUG_MODE
	if (event_debug_map_lock_ != NULL) {
		FUNC0(event_debug_map_lock_, 0);
		event_debug_map_lock_ = NULL;
		FUNC1();
	}
#endif /* EVENT__DISABLE_DEBUG_MODE */
#endif /* EVENT__DISABLE_THREAD_SUPPORT */
	return;
}