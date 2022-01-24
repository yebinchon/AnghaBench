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
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_D2I_AUTOPRIVATEKEY ; 
 int /*<<< orphan*/  ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE ; 
 int /*<<< orphan*/  ASN1_TYPE ; 
 int /*<<< orphan*/  ASN1_TYPE_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int EVP_PKEY_DSA ; 
 int EVP_PKEY_EC ; 
 int EVP_PKEY_RSA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ **,unsigned char const**,long) ; 
 int inkey ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

EVP_PKEY *FUNC9(EVP_PKEY **a, const unsigned char **pp,
                             long length)
{
    FUNC3(ASN1_TYPE) *inkey;
    const unsigned char *p;
    int keytype;
    p = *pp;
    /*
     * Dirty trick: read in the ASN1 data into a STACK_OF(ASN1_TYPE): by
     * analyzing it we can determine the passed structure: this assumes the
     * input is surrounded by an ASN1 SEQUENCE.
     */
    inkey = FUNC4(NULL, &p, length);
    p = *pp;
    /*
     * Since we only need to discern "traditional format" RSA and DSA keys we
     * can just count the elements.
     */
    if (FUNC7(inkey) == 6)
        keytype = EVP_PKEY_DSA;
    else if (FUNC7(inkey) == 4)
        keytype = EVP_PKEY_EC;
    else if (FUNC7(inkey) == 3) { /* This seems to be PKCS8, not
                                              * traditional format */
        PKCS8_PRIV_KEY_INFO *p8 = FUNC5(NULL, &p, length);
        EVP_PKEY *ret;

        FUNC8(inkey, ASN1_TYPE_free);
        if (!p8) {
            FUNC0(ASN1_F_D2I_AUTOPRIVATEKEY,
                    ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE);
            return NULL;
        }
        ret = FUNC1(p8);
        FUNC2(p8);
        if (ret == NULL)
            return NULL;
        *pp = p;
        if (a) {
            *a = ret;
        }
        return ret;
    } else
        keytype = EVP_PKEY_RSA;
    FUNC8(inkey, ASN1_TYPE_free);
    return FUNC6(keytype, a, pp, length);
}