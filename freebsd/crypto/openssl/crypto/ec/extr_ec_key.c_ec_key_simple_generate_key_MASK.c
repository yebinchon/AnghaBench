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
struct TYPE_3__ {int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  group; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(EC_KEY *eckey)
{
    int ok = 0;
    BN_CTX *ctx = NULL;
    BIGNUM *priv_key = NULL;
    const BIGNUM *order = NULL;
    EC_POINT *pub_key = NULL;

    if ((ctx = FUNC1()) == NULL)
        goto err;

    if (eckey->priv_key == NULL) {
        priv_key = FUNC4();
        if (priv_key == NULL)
            goto err;
    } else
        priv_key = eckey->priv_key;

    order = FUNC6(eckey->group);
    if (order == NULL)
        goto err;

    do
        if (!FUNC5(priv_key, order))
            goto err;
    while (FUNC3(priv_key)) ;

    if (eckey->pub_key == NULL) {
        pub_key = FUNC9(eckey->group);
        if (pub_key == NULL)
            goto err;
    } else
        pub_key = eckey->pub_key;

    if (!FUNC8(eckey->group, pub_key, priv_key, NULL, NULL, ctx))
        goto err;

    eckey->priv_key = priv_key;
    eckey->pub_key = pub_key;

    ok = 1;

 err:
    if (eckey->pub_key == NULL)
        FUNC7(pub_key);
    if (eckey->priv_key != priv_key)
        FUNC2(priv_key);
    FUNC0(ctx);
    return ok;
}