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
struct TYPE_5__ {int /*<<< orphan*/ * group; } ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_O2I_ECPUBLICKEY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char const*,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 

EC_KEY *FUNC2(EC_KEY **a, const unsigned char **in, long len)
{
    EC_KEY *ret = NULL;

    if (a == NULL || (*a) == NULL || (*a)->group == NULL) {
        /*
         * sorry, but a EC_GROUP-structure is necessary to set the public key
         */
        FUNC1(EC_F_O2I_ECPUBLICKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    ret = *a;
    if (!FUNC0(ret, *in, len, NULL)) {
        FUNC1(EC_F_O2I_ECPUBLICKEY, ERR_R_EC_LIB);
        return 0;
    }
    *in += len;
    return ret;
}