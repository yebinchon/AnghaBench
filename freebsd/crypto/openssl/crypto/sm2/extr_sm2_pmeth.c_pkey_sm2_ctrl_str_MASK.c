#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int NID_undef ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int OPENSSL_EC_NAMED_CURVE ; 
 int /*<<< orphan*/  SM2_F_PKEY_SM2_CTRL_STR ; 
 int /*<<< orphan*/  SM2_R_INVALID_CURVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (FUNC6(type, "ec_paramgen_curve") == 0) {
        int nid = NID_undef;

        if (((nid = FUNC0(value)) == NID_undef)
            && ((nid = FUNC4(value)) == NID_undef)
            && ((nid = FUNC3(value)) == NID_undef)) {
            FUNC5(SM2_F_PKEY_SM2_CTRL_STR, SM2_R_INVALID_CURVE);
            return 0;
        }
        return FUNC2(ctx, nid);
    } else if (FUNC6(type, "ec_param_enc") == 0) {
        int param_enc;

        if (FUNC6(value, "explicit") == 0)
            param_enc = 0;
        else if (FUNC6(value, "named_curve") == 0)
            param_enc = OPENSSL_EC_NAMED_CURVE;
        else
            return -2;
        return FUNC1(ctx, param_enc);
    }

    return -2;
}