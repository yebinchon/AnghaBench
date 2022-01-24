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
struct TYPE_10__ {int rfc5114_param; int param_nid; } ;
struct TYPE_9__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  TYPE_2__ DH_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  DH_F_PKEY_DH_CTRL_STR ; 
 int /*<<< orphan*/  DH_R_INVALID_PARAMETER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int NID_undef ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(EVP_PKEY_CTX *ctx,
                            const char *type, const char *value)
{
    if (FUNC8(type, "dh_paramgen_prime_len") == 0) {
        int len;
        len = FUNC7(value);
        return FUNC3(ctx, len);
    }
    if (FUNC8(type, "dh_rfc5114") == 0) {
        DH_PKEY_CTX *dctx = ctx->data;
        int len;
        len = FUNC7(value);
        if (len < 0 || len > 3)
            return -2;
        dctx->rfc5114_param = len;
        return 1;
    }
    if (FUNC8(type, "dh_param") == 0) {
        DH_PKEY_CTX *dctx = ctx->data;
        int nid = FUNC6(value);

        if (nid == NID_undef) {
            FUNC0(DH_F_PKEY_DH_CTRL_STR, DH_R_INVALID_PARAMETER_NAME);
            return -2;
        }
        dctx->param_nid = nid;
        return 1;
    }
    if (FUNC8(type, "dh_paramgen_generator") == 0) {
        int len;
        len = FUNC7(value);
        return FUNC2(ctx, len);
    }
    if (FUNC8(type, "dh_paramgen_subprime_len") == 0) {
        int len;
        len = FUNC7(value);
        return FUNC4(ctx, len);
    }
    if (FUNC8(type, "dh_paramgen_type") == 0) {
        int typ;
        typ = FUNC7(value);
        return FUNC5(ctx, typ);
    }
    if (FUNC8(type, "dh_pad") == 0) {
        int pad;
        pad = FUNC7(value);
        return FUNC1(ctx, pad);
    }
    return -2;
}