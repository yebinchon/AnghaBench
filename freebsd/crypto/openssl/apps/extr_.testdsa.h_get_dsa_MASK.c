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
struct TYPE_3__ {int /*<<< orphan*/  g_l; int /*<<< orphan*/  g; int /*<<< orphan*/  q_l; int /*<<< orphan*/  q; int /*<<< orphan*/  p_l; int /*<<< orphan*/  p; int /*<<< orphan*/  pub_l; int /*<<< orphan*/  pub; int /*<<< orphan*/  priv_l; int /*<<< orphan*/  priv; } ;
typedef  TYPE_1__ testdsa ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int) ; 

DSA *FUNC7(int dsa_bits)
{
    DSA *dsa;
    BIGNUM *priv_key, *pub_key, *p, *q, *g;
    testdsa dsa_t;

    switch (dsa_bits) {
    case 512:
        FUNC6(dsa_t, 512);
        break;
    case 1024:
        FUNC6(dsa_t, 1024);
        break;
    case 2048:
        FUNC6(dsa_t, 2048);
        break;
    default:
        return NULL;
    }

    if ((dsa = FUNC3()) == NULL)
        return NULL;
    priv_key = FUNC0(dsa_t.priv, dsa_t.priv_l, NULL);
    pub_key = FUNC0(dsa_t.pub, dsa_t.pub_l, NULL);
    p = FUNC0(dsa_t.p, dsa_t.p_l, NULL);
    q = FUNC0(dsa_t.q, dsa_t.q_l, NULL);
    g = FUNC0(dsa_t.g, dsa_t.g_l, NULL);
    if ((priv_key == NULL) || (pub_key == NULL) || (p == NULL) || (q == NULL)
         || (g == NULL)) {
        goto err;
    }
    if (!FUNC5(dsa, p, q, g))
        goto err;

    if (!FUNC4(dsa, pub_key, priv_key))
        goto err;

    return dsa;
 err:
    FUNC2(dsa);
    FUNC1(priv_key);
    FUNC1(pub_key);
    FUNC1(p);
    FUNC1(q);
    FUNC1(g);
    return NULL;
}