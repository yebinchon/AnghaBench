#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * field_data2; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE ; 
 int /*<<< orphan*/  EC_R_NOT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const EC_GROUP *group, BIGNUM *r,
                                 BN_CTX *ctx)
{
    if (group->field_data2 == NULL) {
        FUNC1(EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE, EC_R_NOT_INITIALIZED);
        return 0;
    }

    if (!FUNC0(r, group->field_data2))
        return 0;
    return 1;
}