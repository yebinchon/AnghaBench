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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_PKEY_EC_CTRL_STR ; 
 int /*<<< orphan*/  EC_R_INVALID_CURVE ; 
 int /*<<< orphan*/  EC_R_INVALID_DIGEST ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int NID_undef ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int OPENSSL_EC_NAMED_CURVE ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static int FUNC11(EVP_PKEY_CTX *ctx,
                            const char *type, const char *value)
{
    if (FUNC10(type, "ec_paramgen_curve") == 0) {
        int nid;
        nid = FUNC0(value);
        if (nid == NID_undef)
            nid = FUNC8(value);
        if (nid == NID_undef)
            nid = FUNC7(value);
        if (nid == NID_undef) {
            FUNC1(EC_F_PKEY_EC_CTRL_STR, EC_R_INVALID_CURVE);
            return 0;
        }
        return FUNC3(ctx, nid);
    } else if (FUNC10(type, "ec_param_enc") == 0) {
        int param_enc;
        if (FUNC10(value, "explicit") == 0)
            param_enc = 0;
        else if (FUNC10(value, "named_curve") == 0)
            param_enc = OPENSSL_EC_NAMED_CURVE;
        else
            return -2;
        return FUNC2(ctx, param_enc);
    } else if (FUNC10(type, "ecdh_kdf_md") == 0) {
        const EVP_MD *md;
        if ((md = FUNC6(value)) == NULL) {
            FUNC1(EC_F_PKEY_EC_CTRL_STR, EC_R_INVALID_DIGEST);
            return 0;
        }
        return FUNC5(ctx, md);
    } else if (FUNC10(type, "ecdh_cofactor_mode") == 0) {
        int co_mode;
        co_mode = FUNC9(value);
        return FUNC4(ctx, co_mode);
    }

    return -2;
}