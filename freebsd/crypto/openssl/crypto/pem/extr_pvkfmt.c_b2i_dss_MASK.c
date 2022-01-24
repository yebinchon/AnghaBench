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
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PEM_F_B2I_DSS ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char const**,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static EVP_PKEY *FUNC15(const unsigned char **in,
                         unsigned int bitlen, int ispub)
{
    const unsigned char *p = *in;
    EVP_PKEY *ret = NULL;
    DSA *dsa = NULL;
    BN_CTX *ctx = NULL;
    unsigned int nbyte;
    BIGNUM *pbn = NULL, *qbn = NULL, *gbn = NULL, *priv_key = NULL;
    BIGNUM *pub_key = NULL;

    nbyte = (bitlen + 7) >> 3;

    dsa = FUNC7();
    ret = FUNC11();
    if (dsa == NULL || ret == NULL)
        goto memerr;
    if (!FUNC14(&p, nbyte, &pbn))
        goto memerr;

    if (!FUNC14(&p, 20, &qbn))
        goto memerr;

    if (!FUNC14(&p, nbyte, &gbn))
        goto memerr;

    if (ispub) {
        if (!FUNC14(&p, nbyte, &pub_key))
            goto memerr;
    } else {
        if (!FUNC14(&p, 20, &priv_key))
            goto memerr;

        /* Set constant time flag before public key calculation */
        FUNC5(priv_key, BN_FLG_CONSTTIME);

        /* Calculate public key */
        pub_key = FUNC4();
        if (pub_key == NULL)
            goto memerr;
        if ((ctx = FUNC1()) == NULL)
            goto memerr;

        if (!FUNC3(pub_key, gbn, priv_key, pbn, ctx))
            goto memerr;

        FUNC0(ctx);
        ctx = NULL;
    }
    if (!FUNC9(dsa, pbn, qbn, gbn))
        goto memerr;
    pbn = qbn = gbn = NULL;
    if (!FUNC8(dsa, pub_key, priv_key))
        goto memerr;
    pub_key = priv_key = NULL;

    if (!FUNC12(ret, dsa))
        goto memerr;
    FUNC6(dsa);
    *in = p;
    return ret;

 memerr:
    FUNC13(PEM_F_B2I_DSS, ERR_R_MALLOC_FAILURE);
    FUNC6(dsa);
    FUNC2(pbn);
    FUNC2(qbn);
    FUNC2(gbn);
    FUNC2(pub_key);
    FUNC2(priv_key);
    FUNC10(ret);
    FUNC0(ctx);
    return NULL;
}