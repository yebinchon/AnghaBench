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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int MAX_LEN ; 
 scalar_t__ FUNC6 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  SRP_RANDOM_SALT_LEN ; 

int FUNC8(const char *user, const char *pass, BIGNUM **salt,
                           BIGNUM **verifier, const BIGNUM *N,
                           const BIGNUM *g)
{
    int result = 0;
    BIGNUM *x = NULL;
    BN_CTX *bn_ctx = FUNC1();
    unsigned char tmp2[MAX_LEN];
    BIGNUM *salttmp = NULL;

    if ((user == NULL) ||
        (pass == NULL) ||
        (salt == NULL) ||
        (verifier == NULL) || (N == NULL) || (g == NULL) || (bn_ctx == NULL))
        goto err;

    if (*salt == NULL) {
        if (FUNC6(tmp2, SRP_RANDOM_SALT_LEN) <= 0)
            goto err;

        salttmp = FUNC2(tmp2, SRP_RANDOM_SALT_LEN, NULL);
        if (salttmp == NULL)
            goto err;
    } else {
        salttmp = *salt;
    }

    x = FUNC7(salttmp, user, pass);
    if (x == NULL)
        goto err;

    *verifier = FUNC5();
    if (*verifier == NULL)
        goto err;

    if (!FUNC4(*verifier, g, x, N, bn_ctx)) {
        FUNC3(*verifier);
        goto err;
    }

    result = 1;
    *salt = salttmp;

 err:
    if (salt != NULL && *salt != salttmp)
        FUNC3(salttmp);
    FUNC3(x);
    FUNC0(bn_ctx);
    return result;
}