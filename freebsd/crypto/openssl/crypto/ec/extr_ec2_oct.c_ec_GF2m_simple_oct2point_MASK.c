#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int point_conversion_form_t ;
struct TYPE_10__ {TYPE_1__* meth; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* field_div ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
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
 int /*<<< orphan*/  FUNC5 (unsigned char const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_OCT2POINT ; 
 int FUNC8 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  EC_R_INVALID_ENCODING ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int POINT_CONVERSION_COMPRESSED ; 
 int POINT_CONVERSION_HYBRID ; 
 int POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC14(const EC_GROUP *group, EC_POINT *point,
                             const unsigned char *buf, size_t len,
                             BN_CTX *ctx)
{
    point_conversion_form_t form;
    int y_bit, m;
    BN_CTX *new_ctx = NULL;
    BIGNUM *x, *y, *yxi;
    size_t field_len, enc_len;
    int ret = 0;

    if (len == 0) {
        FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_BUFFER_TOO_SMALL);
        return 0;
    }
    form = buf[0];
    y_bit = form & 1;
    form = form & ~1U;
    if ((form != 0) && (form != POINT_CONVERSION_COMPRESSED)
        && (form != POINT_CONVERSION_UNCOMPRESSED)
        && (form != POINT_CONVERSION_HYBRID)) {
        FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
        return 0;
    }
    if ((form == 0 || form == POINT_CONVERSION_UNCOMPRESSED) && y_bit) {
        FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
        return 0;
    }

    if (form == 0) {
        if (len != 1) {
            FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
            return 0;
        }

        return FUNC11(group, point);
    }

    m = FUNC8(group);
    field_len = (m + 7) / 8;
    enc_len =
        (form ==
         POINT_CONVERSION_COMPRESSED) ? 1 + field_len : 1 + 2 * field_len;

    if (len != enc_len) {
        FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
        return 0;
    }

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return 0;
    }

    FUNC4(ctx);
    x = FUNC2(ctx);
    y = FUNC2(ctx);
    yxi = FUNC2(ctx);
    if (yxi == NULL)
        goto err;

    if (!FUNC5(buf + 1, field_len, x))
        goto err;
    if (FUNC7(x) > m) {
        FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
        goto err;
    }

    if (form == POINT_CONVERSION_COMPRESSED) {
        if (!FUNC10(group, point, x, y_bit, ctx))
            goto err;
    } else {
        if (!FUNC5(buf + 1 + field_len, field_len, y))
            goto err;
        if (FUNC7(y) > m) {
            FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
            goto err;
        }
        if (form == POINT_CONVERSION_HYBRID) {
            if (!group->meth->field_div(group, yxi, y, x, ctx))
                goto err;
            if (y_bit != FUNC6(yxi)) {
                FUNC12(EC_F_EC_GF2M_SIMPLE_OCT2POINT, EC_R_INVALID_ENCODING);
                goto err;
            }
        }

        /*
         * EC_POINT_set_affine_coordinates is responsible for checking that
         * the point is on the curve.
         */
        if (!FUNC9(group, point, x, y, ctx))
            goto err;
    }

    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}