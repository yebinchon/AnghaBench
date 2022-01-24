#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
#define  ASN1_PKEY_CTRL_CMS_ENVELOPE 134 
#define  ASN1_PKEY_CTRL_CMS_RI_TYPE 133 
#define  ASN1_PKEY_CTRL_CMS_SIGN 132 
#define  ASN1_PKEY_CTRL_DEFAULT_MD_NID 131 
#define  ASN1_PKEY_CTRL_GET1_TLS_ENCPT 130 
#define  ASN1_PKEY_CTRL_PKCS7_SIGN 129 
#define  ASN1_PKEY_CTRL_SET1_TLS_ENCPT 128 
 int CMS_RECIPINFO_AGREE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_SM2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int NID_sha256 ; 
 int NID_sm3 ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (void*) ; 
 int FUNC11 (void*) ; 

__attribute__((used)) static int FUNC12(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
    case ASN1_PKEY_CTRL_PKCS7_SIGN:
        if (arg1 == 0) {
            int snid, hnid;
            X509_ALGOR *alg1, *alg2;
            FUNC8(arg2, NULL, &alg1, &alg2);
            if (alg1 == NULL || alg1->algorithm == NULL)
                return -1;
            hnid = FUNC7(alg1->algorithm);
            if (hnid == NID_undef)
                return -1;
            if (!FUNC5(&snid, hnid, FUNC4(pkey)))
                return -1;
            FUNC9(alg2, FUNC6(snid), V_ASN1_UNDEF, 0);
        }
        return 1;
#ifndef OPENSSL_NO_CMS
    case ASN1_PKEY_CTRL_CMS_SIGN:
        if (arg1 == 0) {
            int snid, hnid;
            X509_ALGOR *alg1, *alg2;
            FUNC0(arg2, NULL, NULL, &alg1, &alg2);
            if (alg1 == NULL || alg1->algorithm == NULL)
                return -1;
            hnid = FUNC7(alg1->algorithm);
            if (hnid == NID_undef)
                return -1;
            if (!FUNC5(&snid, hnid, FUNC4(pkey)))
                return -1;
            FUNC9(alg2, FUNC6(snid), V_ASN1_UNDEF, 0);
        }
        return 1;

    case ASN1_PKEY_CTRL_CMS_ENVELOPE:
        if (arg1 == 1)
            return FUNC10(arg2);
        else if (arg1 == 0)
            return FUNC11(arg2);
        return -2;

    case ASN1_PKEY_CTRL_CMS_RI_TYPE:
        *(int *)arg2 = CMS_RECIPINFO_AGREE;
        return 1;
#endif

    case ASN1_PKEY_CTRL_DEFAULT_MD_NID:
        if (FUNC4(pkey) == EVP_PKEY_SM2) {
            /* For SM2, the only valid digest-alg is SM3 */
            *(int *)arg2 = NID_sm3;
        } else {
            *(int *)arg2 = NID_sha256;
        }
        return 1;

    case ASN1_PKEY_CTRL_SET1_TLS_ENCPT:
        return FUNC2(FUNC3(pkey), arg2, arg1, NULL);

    case ASN1_PKEY_CTRL_GET1_TLS_ENCPT:
        return FUNC1(FUNC3(pkey),
                              POINT_CONVERSION_UNCOMPRESSED, arg2, NULL);

    default:
        return -2;

    }

}