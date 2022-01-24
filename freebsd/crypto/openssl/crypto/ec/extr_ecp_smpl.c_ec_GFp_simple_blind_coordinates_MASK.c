#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* meth; int /*<<< orphan*/  field; } ;
struct TYPE_13__ {scalar_t__ Z_is_one; int /*<<< orphan*/ * Y; int /*<<< orphan*/ * X; int /*<<< orphan*/ * Z; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* field_mul ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_encode ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC12(const EC_GROUP *group, EC_POINT *p,
                                    BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *lambda = NULL;
    BIGNUM *temp = NULL;

    FUNC2(ctx);
    lambda = FUNC1(ctx);
    temp = FUNC1(ctx);
    if (temp == NULL) {
        FUNC5(EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* make sure lambda is not zero */
    do {
        if (!FUNC4(lambda, group->field)) {
            FUNC5(EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, ERR_R_BN_LIB);
            goto err;
        }
    } while (FUNC3(lambda));

    /* if field_encode defined convert between representations */
    if (group->meth->field_encode != NULL
        && !group->meth->field_encode(group, lambda, lambda, ctx))
        goto err;
    if (!group->meth->field_mul(group, p->Z, p->Z, lambda, ctx))
        goto err;
    if (!group->meth->field_sqr(group, temp, lambda, ctx))
        goto err;
    if (!group->meth->field_mul(group, p->X, p->X, temp, ctx))
        goto err;
    if (!group->meth->field_mul(group, temp, temp, lambda, ctx))
        goto err;
    if (!group->meth->field_mul(group, p->Y, p->Y, temp, ctx))
        goto err;
    p->Z_is_one = 0;

    ret = 1;

 err:
    FUNC0(ctx);
    return ret;
}