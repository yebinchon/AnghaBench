#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  struct_ref; struct TYPE_6__* next; } ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_GET_NEXT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  global_engine_lock ; 

ENGINE *FUNC5(ENGINE *e)
{
    ENGINE *ret = NULL;
    if (e == NULL) {
        FUNC3(ENGINE_F_ENGINE_GET_NEXT, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    FUNC1(global_engine_lock);
    ret = e->next;
    if (ret) {
        /* Return a valid structural reference to the next ENGINE */
        ret->struct_ref++;
        FUNC4(ret, 0, 1);
    }
    FUNC0(global_engine_lock);
    /* Release the structural reference to the previous ENGINE */
    FUNC2(e);
    return ret;
}