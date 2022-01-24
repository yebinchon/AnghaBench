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
 int /*<<< orphan*/  ASN1_F_I2D_PUBLICKEY ; 
 int /*<<< orphan*/  ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  EVP_PKEY_DSA 130 
#define  EVP_PKEY_EC 129 
#define  EVP_PKEY_RSA 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned char**) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char**) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char**) ; 

int FUNC8(EVP_PKEY *a, unsigned char **pp)
{
    switch (FUNC4(a)) {
#ifndef OPENSSL_NO_RSA
    case EVP_PKEY_RSA:
        return FUNC6(FUNC3(a), pp);
#endif
#ifndef OPENSSL_NO_DSA
    case EVP_PKEY_DSA:
        return FUNC5(FUNC1(a), pp);
#endif
#ifndef OPENSSL_NO_EC
    case EVP_PKEY_EC:
        return FUNC7(FUNC2(a), pp);
#endif
    default:
        FUNC0(ASN1_F_I2D_PUBLICKEY, ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE);
        return -1;
    }
}