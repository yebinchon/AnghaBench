#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  p; int /*<<< orphan*/  g; int /*<<< orphan*/  q; } ;
typedef  TYPE_1__ DSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(DSA *dsa)
{
    int ok = 0;
    BN_CTX *ctx = NULL;
    BIGNUM *pub_key = NULL, *priv_key = NULL;

    if ((ctx = FUNC1()) == NULL)
        goto err;

    if (dsa->priv_key == NULL) {
        if ((priv_key = FUNC7()) == NULL)
            goto err;
    } else
        priv_key = dsa->priv_key;

    do
        if (!FUNC6(priv_key, dsa->q))
            goto err;
    while (FUNC3(priv_key)) ;

    if (dsa->pub_key == NULL) {
        if ((pub_key = FUNC5()) == NULL)
            goto err;
    } else
        pub_key = dsa->pub_key;

    {
        BIGNUM *prk = FUNC5();

        if (prk == NULL)
            goto err;
        FUNC8(prk, priv_key, BN_FLG_CONSTTIME);

        if (!FUNC4(pub_key, dsa->g, prk, dsa->p, ctx)) {
            FUNC2(prk);
            goto err;
        }
        /* We MUST free prk before any further use of priv_key */
        FUNC2(prk);
    }

    dsa->priv_key = priv_key;
    dsa->pub_key = pub_key;
    ok = 1;

 err:
    if (pub_key != dsa->pub_key)
        FUNC2(pub_key);
    if (priv_key != dsa->priv_key)
        FUNC2(priv_key);
    FUNC0(ctx);
    return ok;
}