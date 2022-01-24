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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 

int FUNC12(EVP_PKEY_CTX **pctx,
                 const char *algname, ENGINE *e, int do_param)
{
    EVP_PKEY_CTX *ctx = NULL;
    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE *tmpeng = NULL;
    int pkey_id;

    if (*pctx) {
        FUNC1(bio_err, "Algorithm already set!\n");
        return 0;
    }

    ameth = FUNC8(&tmpeng, algname, -1);

#ifndef OPENSSL_NO_ENGINE
    if (!ameth && e)
        ameth = FUNC3(e, algname, -1);
#endif

    if (!ameth) {
        FUNC0(bio_err, "Algorithm %s not found\n", algname);
        return 0;
    }

    FUNC4();

    FUNC9(&pkey_id, NULL, NULL, NULL, NULL, ameth);
#ifndef OPENSSL_NO_ENGINE
    FUNC2(tmpeng);
#endif
    ctx = FUNC7(pkey_id, e);

    if (!ctx)
        goto err;
    if (do_param) {
        if (FUNC11(ctx) <= 0)
            goto err;
    } else {
        if (FUNC10(ctx) <= 0)
            goto err;
    }

    *pctx = ctx;
    return 1;

 err:
    FUNC0(bio_err, "Error initializing %s context\n", algname);
    FUNC5(bio_err);
    FUNC6(ctx);
    return 0;

}