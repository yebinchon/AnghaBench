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
struct TYPE_5__ {int /*<<< orphan*/ * logs; } ;
typedef  TYPE_1__ CTLOG_STORE ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_CTLOG_STORE_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

CTLOG_STORE *FUNC4(void)
{
    CTLOG_STORE *ret = FUNC2(sizeof(*ret));

    if (ret == NULL) {
        FUNC0(CT_F_CTLOG_STORE_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->logs = FUNC3();
    if (ret->logs == NULL)
        goto err;

    return ret;
err:
    FUNC1(ret);
    return NULL;
}