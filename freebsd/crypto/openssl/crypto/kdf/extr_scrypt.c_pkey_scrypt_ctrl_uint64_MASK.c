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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  KDF_F_PKEY_SCRYPT_CTRL_UINT64 ; 
 int /*<<< orphan*/  KDF_R_VALUE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(EVP_PKEY_CTX *ctx, int type,
                                   const char *value)
{
    uint64_t int_value;

    if (!FUNC1(value, &int_value)) {
        FUNC0(KDF_F_PKEY_SCRYPT_CTRL_UINT64, KDF_R_VALUE_ERROR);
        return 0;
    }
    return FUNC2(ctx, type, 0, &int_value);
}