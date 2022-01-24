#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char point_conversion_form_t ;
struct TYPE_9__ {TYPE_1__* meth; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* field_div ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_POINT2OCT ; 
 int FUNC9 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_R_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  EC_R_INVALID_FORM ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 unsigned char POINT_CONVERSION_COMPRESSED ; 
 unsigned char POINT_CONVERSION_HYBRID ; 
 unsigned char POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

size_t FUNC14(const EC_GROUP *group, const EC_POINT *point,
                                point_conversion_form_t form,
                                unsigned char *buf, size_t len, BN_CTX *ctx)
{
    size_t ret;
    BN_CTX *new_ctx = NULL;
    int used_ctx = 0;
    BIGNUM *x, *y, *yxi;
    size_t field_len, i, skip;

    if ((form != POINT_CONVERSION_COMPRESSED)
        && (form != POINT_CONVERSION_UNCOMPRESSED)
        && (form != POINT_CONVERSION_HYBRID)) {
        FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, EC_R_INVALID_FORM);
        goto err;
    }

    if (FUNC11(group, point)) {
        /* encodes to a single 0 octet */
        if (buf != NULL) {
            if (len < 1) {
                FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, EC_R_BUFFER_TOO_SMALL);
                return 0;
            }
            buf[0] = 0;
        }
        return 1;
    }

    /* ret := required output buffer length */
    field_len = (FUNC9(group) + 7) / 8;
    ret =
        (form ==
         POINT_CONVERSION_COMPRESSED) ? 1 + field_len : 1 + 2 * field_len;

    /* if 'buf' is NULL, just return required length */
    if (buf != NULL) {
        if (len < ret) {
            FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, EC_R_BUFFER_TOO_SMALL);
            goto err;
        }

        if (ctx == NULL) {
            ctx = new_ctx = FUNC3();
            if (ctx == NULL)
                return 0;
        }

        FUNC4(ctx);
        used_ctx = 1;
        x = FUNC2(ctx);
        y = FUNC2(ctx);
        yxi = FUNC2(ctx);
        if (yxi == NULL)
            goto err;

        if (!FUNC10(group, point, x, y, ctx))
            goto err;

        buf[0] = form;
        if ((form != POINT_CONVERSION_UNCOMPRESSED) && !FUNC7(x)) {
            if (!group->meth->field_div(group, yxi, y, x, ctx))
                goto err;
            if (FUNC6(yxi))
                buf[0]++;
        }

        i = 1;

        skip = field_len - FUNC8(x);
        if (skip > field_len) {
            FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
            goto err;
        }
        while (skip > 0) {
            buf[i++] = 0;
            skip--;
        }
        skip = FUNC5(x, buf + i);
        i += skip;
        if (i != 1 + field_len) {
            FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
            goto err;
        }

        if (form == POINT_CONVERSION_UNCOMPRESSED
            || form == POINT_CONVERSION_HYBRID) {
            skip = field_len - FUNC8(y);
            if (skip > field_len) {
                FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
                goto err;
            }
            while (skip > 0) {
                buf[i++] = 0;
                skip--;
            }
            skip = FUNC5(y, buf + i);
            i += skip;
        }

        if (i != ret) {
            FUNC12(EC_F_EC_GF2M_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (used_ctx)
        FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;

 err:
    if (used_ctx)
        FUNC0(ctx);
    FUNC1(new_ctx);
    return 0;
}