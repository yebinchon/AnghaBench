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
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECKEY_PRIV_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,void const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned char const**,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,void const*) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p = NULL;
    const void *pval;
    int ptype, pklen;
    EC_KEY *eckey = NULL;
    const X509_ALGOR *palg;

    if (!FUNC3(NULL, &p, &pklen, &palg, p8))
        return 0;
    FUNC4(NULL, &ptype, &pval, palg);

    eckey = FUNC6(ptype, pval);

    if (!eckey)
        goto ecliberr;

    /* We have parameters now set private key */
    if (!FUNC5(&eckey, &p, pklen)) {
        FUNC1(EC_F_ECKEY_PRIV_DECODE, EC_R_DECODE_ERROR);
        goto ecerr;
    }

    FUNC2(pkey, eckey);
    return 1;

 ecliberr:
    FUNC1(EC_F_ECKEY_PRIV_DECODE, ERR_R_EC_LIB);
 ecerr:
    FUNC0(eckey);
    return 0;
}