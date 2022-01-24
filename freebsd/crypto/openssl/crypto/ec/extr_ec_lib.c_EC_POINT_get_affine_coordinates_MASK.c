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
struct TYPE_8__ {TYPE_1__* meth; } ;
struct TYPE_7__ {int (* point_get_affine_coordinates ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_EC_POINT_GET_AFFINE_COORDINATES ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_R_INCOMPATIBLE_OBJECTS ; 
 int /*<<< orphan*/  EC_R_POINT_AT_INFINITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(const EC_GROUP *group,
                                    const EC_POINT *point, BIGNUM *x, BIGNUM *y,
                                    BN_CTX *ctx)
{
    if (group->meth->point_get_affine_coordinates == NULL) {
        FUNC1(EC_F_EC_POINT_GET_AFFINE_COORDINATES,
              ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
    if (!FUNC2(point, group)) {
        FUNC1(EC_F_EC_POINT_GET_AFFINE_COORDINATES, EC_R_INCOMPATIBLE_OBJECTS);
        return 0;
    }
    if (FUNC0(group, point)) {
        FUNC1(EC_F_EC_POINT_GET_AFFINE_COORDINATES, EC_R_POINT_AT_INFINITY);
        return 0;
    }
    return group->meth->point_get_affine_coordinates(group, point, x, y, ctx);
}