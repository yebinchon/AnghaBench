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
struct TYPE_6__ {int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_D2I_ECPARAMETERS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

EC_KEY *FUNC4(EC_KEY **a, const unsigned char **in, long len)
{
    EC_KEY *ret;

    if (in == NULL || *in == NULL) {
        FUNC2(EC_F_D2I_ECPARAMETERS, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }

    if (a == NULL || *a == NULL) {
        if ((ret = FUNC1()) == NULL) {
            FUNC2(EC_F_D2I_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
            return NULL;
        }
    } else
        ret = *a;

    if (!FUNC3(&ret->group, in, len)) {
        FUNC2(EC_F_D2I_ECPARAMETERS, ERR_R_EC_LIB);
        if (a == NULL || *a != ret)
             FUNC0(ret);
        return NULL;
    }

    if (a)
        *a = ret;

    return ret;
}