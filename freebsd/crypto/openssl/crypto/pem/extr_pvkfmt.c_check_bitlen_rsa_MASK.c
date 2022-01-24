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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 unsigned int MS_RSA1MAGIC ; 
 unsigned int MS_RSA2MAGIC ; 
 int /*<<< orphan*/  PEM_F_CHECK_BITLEN_RSA ; 
 int /*<<< orphan*/  PEM_R_UNSUPPORTED_KEY_COMPONENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(RSA *rsa, int ispub, unsigned int *pmagic)
{
    int nbyte, hnbyte, bitlen;
    const BIGNUM *e;

    FUNC6(rsa, NULL, &e, NULL);
    if (FUNC0(e) > 32)
        goto badkey;
    bitlen = FUNC3(rsa);
    nbyte = FUNC7(rsa);
    hnbyte = (bitlen + 15) >> 4;
    if (ispub) {
        *pmagic = MS_RSA1MAGIC;
        return bitlen;
    } else {
        const BIGNUM *d, *p, *q, *iqmp, *dmp1, *dmq1;

        *pmagic = MS_RSA2MAGIC;

        /*
         * For private key each component must fit within nbyte or hnbyte.
         */
        FUNC6(rsa, NULL, NULL, &d);
        if (FUNC1(d) > nbyte)
            goto badkey;
        FUNC5(rsa, &p, &q);
        FUNC4(rsa, &dmp1, &dmq1, &iqmp);
        if ((FUNC1(iqmp) > hnbyte)
            || (FUNC1(p) > hnbyte)
            || (FUNC1(q) > hnbyte)
            || (FUNC1(dmp1) > hnbyte)
            || (FUNC1(dmq1) > hnbyte))
            goto badkey;
    }
    return bitlen;
 badkey:
    FUNC2(PEM_F_CHECK_BITLEN_RSA, PEM_R_UNSUPPORTED_KEY_COMPONENTS);
    return 0;
}