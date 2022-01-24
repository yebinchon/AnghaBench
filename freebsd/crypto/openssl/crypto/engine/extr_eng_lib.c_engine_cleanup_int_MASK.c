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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cleanup_stack ; 
 int /*<<< orphan*/  engine_cleanup_cb_free ; 
 int /*<<< orphan*/  global_engine_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
    if (FUNC1(0)) {
        FUNC2(cleanup_stack,
                                        engine_cleanup_cb_free);
        cleanup_stack = NULL;
    }
    FUNC0(global_engine_lock);
}