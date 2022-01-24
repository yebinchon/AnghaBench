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
struct TYPE_5__ {int flags; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ DSA_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_F_DSA_METH_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 

DSA_METHOD *FUNC4(const char *name, int flags)
{
    DSA_METHOD *dsam = FUNC3(sizeof(*dsam));

    if (dsam != NULL) {
        dsam->flags = flags;

        dsam->name = FUNC2(name);
        if (dsam->name != NULL)
            return dsam;

        FUNC1(dsam);
    }

    FUNC0(DSA_F_DSA_METH_NEW, ERR_R_MALLOC_FAILURE);
    return NULL;
}