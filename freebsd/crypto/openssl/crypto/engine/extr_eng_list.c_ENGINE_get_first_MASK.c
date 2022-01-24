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
struct TYPE_5__ {int /*<<< orphan*/  struct_ref; } ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_GET_FIRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_engine_lock_init ; 
 TYPE_1__* engine_list_head ; 
 int /*<<< orphan*/  engine_lock_init ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  global_engine_lock ; 

ENGINE *FUNC5(void)
{
    ENGINE *ret;

    if (!FUNC3(&engine_lock_init, do_engine_lock_init)) {
        FUNC2(ENGINE_F_ENGINE_GET_FIRST, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    FUNC1(global_engine_lock);
    ret = engine_list_head;
    if (ret) {
        ret->struct_ref++;
        FUNC4(ret, 0, 1);
    }
    FUNC0(global_engine_lock);
    return ret;
}