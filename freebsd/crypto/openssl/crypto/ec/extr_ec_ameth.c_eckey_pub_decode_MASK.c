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
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECKEY_PUB_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,void const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,void const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p = NULL;
    const void *pval;
    int ptype, pklen;
    EC_KEY *eckey = NULL;
    X509_ALGOR *palg;

    if (!FUNC4(NULL, &p, &pklen, &palg, pubkey))
        return 0;
    FUNC3(NULL, &ptype, &pval, palg);

    eckey = FUNC5(ptype, pval);

    if (!eckey) {
        FUNC1(EC_F_ECKEY_PUB_DECODE, ERR_R_EC_LIB);
        return 0;
    }

    /* We have parameters now set public key */
    if (!FUNC6(&eckey, &p, pklen)) {
        FUNC1(EC_F_ECKEY_PUB_DECODE, EC_R_DECODE_ERROR);
        goto ecerr;
    }

    FUNC2(pkey, eckey);
    return 1;

 ecerr:
    FUNC0(eckey);
    return 0;
}