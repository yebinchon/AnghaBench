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
typedef  int /*<<< orphan*/  X509_SIG ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EVP_PBE_TYPE_PRF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS8_ENCRYPT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int,unsigned char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

X509_SIG *FUNC8(int pbe_nid, const EVP_CIPHER *cipher,
                        const char *pass, int passlen,
                        unsigned char *salt, int saltlen, int iter,
                        PKCS8_PRIV_KEY_INFO *p8inf)
{
    X509_SIG *p8 = NULL;
    X509_ALGOR *pbe;

    if (pbe_nid == -1)
        pbe = FUNC3(cipher, iter, salt, saltlen);
    else if (FUNC1(EVP_PBE_TYPE_PRF, pbe_nid, NULL, NULL, 0))
        pbe = FUNC4(cipher, iter, salt, saltlen, NULL, pbe_nid);
    else {
        FUNC0();
        pbe = FUNC5(pbe_nid, iter, salt, saltlen);
    }
    if (!pbe) {
        FUNC2(PKCS12_F_PKCS8_ENCRYPT, ERR_R_ASN1_LIB);
        return NULL;
    }
    p8 = FUNC6(pass, passlen, p8inf, pbe);
    if (p8 == NULL) {
        FUNC7(pbe);
        return NULL;
    }

    return p8;
}