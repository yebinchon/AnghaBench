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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  SM2_F_SM2_VERIFY ; 
 int /*<<< orphan*/  SM2_R_INVALID_ENCODING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,unsigned char const**,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC8 (unsigned char const*,unsigned char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(const unsigned char *dgst, int dgstlen,
               const unsigned char *sig, int sig_len, EC_KEY *eckey)
{
    ECDSA_SIG *s = NULL;
    BIGNUM *e = NULL;
    const unsigned char *p = sig;
    unsigned char *der = NULL;
    int derlen = -1;
    int ret = -1;

    s = FUNC3();
    if (s == NULL) {
        FUNC5(SM2_F_SM2_VERIFY, ERR_R_MALLOC_FAILURE);
        goto done;
    }
    if (FUNC6(&s, &p, sig_len) == NULL) {
        FUNC5(SM2_F_SM2_VERIFY, SM2_R_INVALID_ENCODING);
        goto done;
    }
    /* Ensure signature uses DER and doesn't have trailing garbage */
    derlen = FUNC7(s, &der);
    if (derlen != sig_len || FUNC8(sig, der, derlen) != 0) {
        FUNC5(SM2_F_SM2_VERIFY, SM2_R_INVALID_ENCODING);
        goto done;
    }

    e = FUNC0(dgst, dgstlen, NULL);
    if (e == NULL) {
        FUNC5(SM2_F_SM2_VERIFY, ERR_R_BN_LIB);
        goto done;
    }

    ret = FUNC9(eckey, s, e);

 done:
    FUNC4(der);
    FUNC1(e);
    FUNC2(s);
    return ret;
}