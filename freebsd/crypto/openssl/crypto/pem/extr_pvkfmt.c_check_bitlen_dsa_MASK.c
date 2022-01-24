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
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 unsigned int MS_DSS1MAGIC ; 
 unsigned int MS_DSS2MAGIC ; 
 int /*<<< orphan*/  PEM_F_CHECK_BITLEN_DSA ; 
 int /*<<< orphan*/  PEM_R_UNSUPPORTED_KEY_COMPONENTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(DSA *dsa, int ispub, unsigned int *pmagic)
{
    int bitlen;
    const BIGNUM *p = NULL, *q = NULL, *g = NULL;
    const BIGNUM *pub_key = NULL, *priv_key = NULL;

    FUNC2(dsa, &p, &q, &g);
    FUNC1(dsa, &pub_key, &priv_key);
    bitlen = FUNC0(p);
    if ((bitlen & 7) || (FUNC0(q) != 160)
        || (FUNC0(g) > bitlen))
        goto badkey;
    if (ispub) {
        if (FUNC0(pub_key) > bitlen)
            goto badkey;
        *pmagic = MS_DSS1MAGIC;
    } else {
        if (FUNC0(priv_key) > 160)
            goto badkey;
        *pmagic = MS_DSS2MAGIC;
    }

    return bitlen;
 badkey:
    FUNC3(PEM_F_CHECK_BITLEN_DSA, PEM_R_UNSUPPORTED_KEY_COMPONENTS);
    return 0;
}