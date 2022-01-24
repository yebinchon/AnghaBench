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
typedef  int /*<<< orphan*/  ENGINE_CLEANUP_ITEM ;
typedef  int /*<<< orphan*/  ENGINE_CLEANUP_CB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_stack ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(ENGINE_CLEANUP_CB *cb)
{
    ENGINE_CLEANUP_ITEM *item;
    if (!FUNC1(1))
        return;
    item = FUNC2(cb);
    if (item != NULL) {
        if (FUNC3(cleanup_stack, item) <= 0)
            FUNC0(item);
    }
}