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
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void (*) (int,int,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

RSA *FUNC9(int bits, unsigned long e_value,
                      void (*callback) (int, int, void *), void *cb_arg)
{
    int i;
    BN_GENCB *cb = FUNC1();
    RSA *rsa = FUNC8();
    BIGNUM *e = FUNC4();

    if (cb == NULL || rsa == NULL || e == NULL)
        goto err;

    /*
     * The problem is when building with 8, 16, or 32 BN_ULONG, unsigned long
     * can be larger
     */
    for (i = 0; i < (int)sizeof(unsigned long) * 8; i++) {
        if (e_value & (1UL << i))
            if (FUNC5(e, i) == 0)
                goto err;
    }

    FUNC2(cb, callback, cb_arg);

    if (FUNC7(rsa, bits, e, cb)) {
        FUNC3(e);
        FUNC0(cb);
        return rsa;
    }
 err:
    FUNC3(e);
    FUNC6(rsa);
    FUNC0(cb);
    return 0;
}