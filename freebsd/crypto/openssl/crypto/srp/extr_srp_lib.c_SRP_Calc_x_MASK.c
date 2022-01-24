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
typedef  int /*<<< orphan*/  dig ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 unsigned char* FUNC10 (int) ; 
 int SHA_DIGEST_LENGTH ; 
 int FUNC11 (char const*) ; 

BIGNUM *FUNC12(const BIGNUM *s, const char *user, const char *pass)
{
    unsigned char dig[SHA_DIGEST_LENGTH];
    EVP_MD_CTX *ctxt;
    unsigned char *cs = NULL;
    BIGNUM *res = NULL;

    if ((s == NULL) || (user == NULL) || (pass == NULL))
        return NULL;

    ctxt = FUNC7();
    if (ctxt == NULL)
        return NULL;
    if ((cs = FUNC10(FUNC2(s))) == NULL)
        goto err;

    if (!FUNC4(ctxt, FUNC8(), NULL)
        || !FUNC5(ctxt, user, FUNC11(user))
        || !FUNC5(ctxt, ":", 1)
        || !FUNC5(ctxt, pass, FUNC11(pass))
        || !FUNC3(ctxt, dig, NULL)
        || !FUNC4(ctxt, FUNC8(), NULL))
        goto err;
    if (FUNC1(s, cs) < 0)
        goto err;
    if (!FUNC5(ctxt, cs, FUNC2(s)))
        goto err;

    if (!FUNC5(ctxt, dig, sizeof(dig))
        || !FUNC3(ctxt, dig, NULL))
        goto err;

    res = FUNC0(dig, sizeof(dig), NULL);

 err:
    FUNC9(cs);
    FUNC6(ctxt);
    return res;
}