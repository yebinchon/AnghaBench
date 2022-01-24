#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parameters; int /*<<< orphan*/ * named_curve; } ;
struct TYPE_8__ {int type; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_2__ ECPKPARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  EC_F_EC_GROUP_GET_ECPKPARAMETERS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

ECPKPARAMETERS *FUNC9(const EC_GROUP *group,
                                            ECPKPARAMETERS *params)
{
    int ok = 1, tmp;
    ECPKPARAMETERS *ret = params;

    if (ret == NULL) {
        if ((ret = FUNC3()) == NULL) {
            FUNC7(EC_F_EC_GROUP_GET_ECPKPARAMETERS, ERR_R_MALLOC_FAILURE);
            return NULL;
        }
    } else {
        if (ret->type == 0)
            FUNC0(ret->value.named_curve);
        else if (ret->type == 1 && ret->value.parameters)
            FUNC1(ret->value.parameters);
    }

    if (FUNC4(group)) {
        /*
         * use the asn1 OID to describe the elliptic curve parameters
         */
        tmp = FUNC5(group);
        if (tmp) {
            ret->type = 0;
            if ((ret->value.named_curve = FUNC8(tmp)) == NULL)
                ok = 0;
        } else
            /* we don't know the nid => ERROR */
            ok = 0;
    } else {
        /* use the ECPARAMETERS structure */
        ret->type = 1;
        if ((ret->value.parameters =
             FUNC6(group, NULL)) == NULL)
            ok = 0;
    }

    if (!ok) {
        FUNC2(ret);
        return NULL;
    }
    return ret;
}