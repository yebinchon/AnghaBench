#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * gen_group; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pkey; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ EC_PKEY_CTX ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_PKEY_EC_KEYGEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_NO_PARAMETERS_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    EC_KEY *ec = NULL;
    EC_PKEY_CTX *dctx = ctx->data;
    int ret;

    if (ctx->pkey == NULL && dctx->gen_group == NULL) {
        FUNC4(EC_F_PKEY_EC_KEYGEN, EC_R_NO_PARAMETERS_SET);
        return 0;
    }
    ec = FUNC2();
    if (ec == NULL)
        return 0;
    if (!FUNC7(FUNC5(pkey, ec))) {
        FUNC0(ec);
        return 0;
    }
    /* Note: if error is returned, we count on caller to free pkey->pkey.ec */
    if (ctx->pkey != NULL)
        ret = FUNC6(pkey, ctx->pkey);
    else
        ret = FUNC3(ec, dctx->gen_group);

    return ret ? FUNC1(ec) : 0;
}