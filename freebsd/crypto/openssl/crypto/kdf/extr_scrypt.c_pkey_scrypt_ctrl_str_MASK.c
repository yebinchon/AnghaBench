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
 int /*<<< orphan*/  EVP_PKEY_CTRL_PASS ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SCRYPT_N ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SCRYPT_P ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SCRYPT_R ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SCRYPT_SALT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  KDF_F_PKEY_SCRYPT_CTRL_STR ; 
 int /*<<< orphan*/  KDF_R_UNKNOWN_PARAMETER_TYPE ; 
 int /*<<< orphan*/  KDF_R_VALUE_MISSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, const char *type,
                                const char *value)
{
    if (value == NULL) {
        FUNC2(KDF_F_PKEY_SCRYPT_CTRL_STR, KDF_R_VALUE_MISSING);
        return 0;
    }

    if (FUNC4(type, "pass") == 0)
        return FUNC1(ctx, EVP_PKEY_CTRL_PASS, value);

    if (FUNC4(type, "hexpass") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_PASS, value);

    if (FUNC4(type, "salt") == 0)
        return FUNC1(ctx, EVP_PKEY_CTRL_SCRYPT_SALT, value);

    if (FUNC4(type, "hexsalt") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_SCRYPT_SALT, value);

    if (FUNC4(type, "N") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_SCRYPT_N, value);

    if (FUNC4(type, "r") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_SCRYPT_R, value);

    if (FUNC4(type, "p") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_SCRYPT_P, value);

    if (FUNC4(type, "maxmem_bytes") == 0)
        return FUNC3(ctx, EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES,
                                       value);

    FUNC2(KDF_F_PKEY_SCRYPT_CTRL_STR, KDF_R_UNKNOWN_PARAMETER_TYPE);
    return -2;
}