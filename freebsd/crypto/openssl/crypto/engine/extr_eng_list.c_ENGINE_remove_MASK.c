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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_REMOVE ; 
 int /*<<< orphan*/  ENGINE_R_INTERNAL_LIST_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_engine_lock ; 

int FUNC4(ENGINE *e)
{
    int to_return = 1;
    if (e == NULL) {
        FUNC2(ENGINE_F_ENGINE_REMOVE, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    FUNC1(global_engine_lock);
    if (!FUNC3(e)) {
        FUNC2(ENGINE_F_ENGINE_REMOVE, ENGINE_R_INTERNAL_LIST_ERROR);
        to_return = 0;
    }
    FUNC0(global_engine_lock);
    return to_return;
}