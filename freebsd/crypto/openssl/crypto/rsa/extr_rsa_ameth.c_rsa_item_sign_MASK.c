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
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  EVP_PKEY_RSA_PSS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int RSA_PKCS1_PADDING ; 
 int RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                         X509_ALGOR *alg1, X509_ALGOR *alg2,
                         ASN1_BIT_STRING *sig)
{
    int pad_mode;
    EVP_PKEY_CTX *pkctx = FUNC2(ctx);

    if (FUNC3(pkctx, &pad_mode) <= 0)
        return 0;
    if (pad_mode == RSA_PKCS1_PADDING)
        return 2;
    if (pad_mode == RSA_PKCS1_PSS_PADDING) {
        ASN1_STRING *os1 = NULL;
        os1 = FUNC6(pkctx);
        if (!os1)
            return 0;
        /* Duplicate parameters if we have to */
        if (alg2) {
            ASN1_STRING *os2 = FUNC0(os1);
            if (!os2) {
                FUNC1(os1);
                return 0;
            }
            FUNC5(alg2, FUNC4(EVP_PKEY_RSA_PSS),
                            V_ASN1_SEQUENCE, os2);
        }
        FUNC5(alg1, FUNC4(EVP_PKEY_RSA_PSS),
                        V_ASN1_SEQUENCE, os1);
        return 3;
    }
    return 2;
}