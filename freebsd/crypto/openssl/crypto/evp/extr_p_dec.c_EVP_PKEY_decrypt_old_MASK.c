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
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_PKEY_DECRYPT_OLD ; 
 scalar_t__ EVP_PKEY_RSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_R_PUBLIC_KEY_NOT_RSA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int FUNC3 (int,unsigned char const*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(unsigned char *key, const unsigned char *ek, int ekl,
                         EVP_PKEY *priv)
{
    int ret = -1;

#ifndef OPENSSL_NO_RSA
    if (FUNC1(priv) != EVP_PKEY_RSA) {
#endif
        FUNC2(EVP_F_EVP_PKEY_DECRYPT_OLD, EVP_R_PUBLIC_KEY_NOT_RSA);
#ifndef OPENSSL_NO_RSA
        goto err;
    }

    ret =
        FUNC3(ekl, ek, key, FUNC0(priv),
                            RSA_PKCS1_PADDING);
 err:
#endif
    return ret;
}