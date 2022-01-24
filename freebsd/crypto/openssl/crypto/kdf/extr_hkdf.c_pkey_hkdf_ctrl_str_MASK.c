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
 int /*<<< orphan*/  EVP_PKEY_CTRL_HKDF_INFO ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_HKDF_KEY ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_HKDF_MD ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_HKDF_SALT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int EVP_PKEY_HKDEF_MODE_EXPAND_ONLY ; 
 int EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND ; 
 int EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY ; 
 int /*<<< orphan*/  EVP_PKEY_OP_DERIVE ; 
 int /*<<< orphan*/  KDF_F_PKEY_HKDF_CTRL_STR ; 
 int /*<<< orphan*/  KDF_R_UNKNOWN_PARAMETER_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *ctx, const char *type,
                              const char *value)
{
    if (FUNC5(type, "mode") == 0) {
        int mode;

        if (FUNC5(value, "EXTRACT_AND_EXPAND") == 0)
            mode = EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND;
        else if (FUNC5(value, "EXTRACT_ONLY") == 0)
            mode = EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY;
        else if (FUNC5(value, "EXPAND_ONLY") == 0)
            mode = EVP_PKEY_HKDEF_MODE_EXPAND_ONLY;
        else
            return 0;

        return FUNC1(ctx, mode);
    }

    if (FUNC5(type, "md") == 0)
        return FUNC2(ctx, EVP_PKEY_OP_DERIVE,
                               EVP_PKEY_CTRL_HKDF_MD, value);

    if (FUNC5(type, "salt") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_HKDF_SALT, value);

    if (FUNC5(type, "hexsalt") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_HKDF_SALT, value);

    if (FUNC5(type, "key") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_HKDF_KEY, value);

    if (FUNC5(type, "hexkey") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_HKDF_KEY, value);

    if (FUNC5(type, "info") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_HKDF_INFO, value);

    if (FUNC5(type, "hexinfo") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_HKDF_INFO, value);

    FUNC4(KDF_F_PKEY_HKDF_CTRL_STR, KDF_R_UNKNOWN_PARAMETER_TYPE);
    return -2;
}