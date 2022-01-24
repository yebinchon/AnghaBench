#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ DH_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  DH_F_DH_METH_DUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*,int) ; 

DH_METHOD *FUNC5(const DH_METHOD *dhm)
{
    DH_METHOD *ret = FUNC2(sizeof(*ret));

    if (ret != NULL) {
        FUNC4(ret, dhm, sizeof(*dhm));

        ret->name = FUNC3(dhm->name);
        if (ret->name != NULL)
            return ret;

        FUNC1(ret);
    }

    FUNC0(DH_F_DH_METH_DUP, ERR_R_MALLOC_FAILURE);
    return NULL;
}