#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int struct_ref; int /*<<< orphan*/  ex_data; } ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_ENGINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_engine_lock_init ; 
 int /*<<< orphan*/  engine_lock_init ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ENGINE *FUNC6(void)
{
    ENGINE *ret;

    if (!FUNC4(&engine_lock_init, do_engine_lock_init)
        || (ret = FUNC3(sizeof(*ret))) == NULL) {
        FUNC1(ENGINE_F_ENGINE_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->struct_ref = 1;
    FUNC5(ret, 0, 1);
    if (!FUNC0(CRYPTO_EX_INDEX_ENGINE, ret, &ret->ex_data)) {
        FUNC2(ret);
        return NULL;
    }
    return ret;
}