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
typedef  int /*<<< orphan*/  CRYPTO_RWLOCK ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

BN_MONT_CTX *FUNC6(BN_MONT_CTX **pmont, CRYPTO_RWLOCK *lock,
                                    const BIGNUM *mod, BN_CTX *ctx)
{
    BN_MONT_CTX *ret;

    FUNC3(lock);
    ret = *pmont;
    FUNC4(lock);
    if (ret)
        return ret;

    /*
     * We don't want to serialise globally while doing our lazy-init math in
     * BN_MONT_CTX_set. That punishes threads that are doing independent
     * things. Instead, punish the case where more than one thread tries to
     * lazy-init the same 'pmont', by having each do the lazy-init math work
     * independently and only use the one from the thread that wins the race
     * (the losers throw away the work they've done).
     */
    ret = FUNC1();
    if (ret == NULL)
        return NULL;
    if (!FUNC2(ret, mod, ctx)) {
        FUNC0(ret);
        return NULL;
    }

    /* The locked compare-and-set, after the local work is done. */
    FUNC5(lock);
    if (*pmont) {
        FUNC0(ret);
        ret = *pmont;
    } else
        *pmont = ret;
    FUNC4(lock);
    return ret;
}