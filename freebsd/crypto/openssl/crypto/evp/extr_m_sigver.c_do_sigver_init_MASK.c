#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* pctx; void* update; } ;
struct TYPE_18__ {TYPE_1__* pmeth; int /*<<< orphan*/  operation; } ;
struct TYPE_17__ {int flags; scalar_t__ (* verifyctx_init ) (TYPE_2__*,TYPE_3__*) ;scalar_t__ digestverify; scalar_t__ (* signctx_init ) (TYPE_2__*,TYPE_3__*) ;scalar_t__ digestsign; int (* digest_custom ) (TYPE_2__*,TYPE_3__*) ;} ;
typedef  TYPE_2__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_3__ EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_F_DO_SIGVER_INIT ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int EVP_PKEY_FLAG_SIGCTX_CUSTOM ; 
 int /*<<< orphan*/  EVP_PKEY_OP_SIGN ; 
 int /*<<< orphan*/  EVP_PKEY_OP_SIGNCTX ; 
 int /*<<< orphan*/  EVP_PKEY_OP_VERIFY ; 
 int /*<<< orphan*/  EVP_PKEY_OP_VERIFYCTX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  EVP_R_NO_DEFAULT_DIGEST ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC10 (TYPE_2__*,TYPE_3__*) ; 
 void* update ; 

__attribute__((used)) static int FUNC11(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                          const EVP_MD *type, ENGINE *e, EVP_PKEY *pkey,
                          int ver)
{
    if (ctx->pctx == NULL)
        ctx->pctx = FUNC1(pkey, e);
    if (ctx->pctx == NULL)
        return 0;

    if (!(ctx->pctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM)) {

        if (type == NULL) {
            int def_nid;
            if (FUNC3(pkey, &def_nid) > 0)
                type = FUNC6(def_nid);
        }

        if (type == NULL) {
            FUNC7(EVP_F_DO_SIGVER_INIT, EVP_R_NO_DEFAULT_DIGEST);
            return 0;
        }
    }

    if (ver) {
        if (ctx->pctx->pmeth->verifyctx_init) {
            if (ctx->pctx->pmeth->verifyctx_init(ctx->pctx, ctx) <= 0)
                return 0;
            ctx->pctx->operation = EVP_PKEY_OP_VERIFYCTX;
        } else if (ctx->pctx->pmeth->digestverify != 0) {
            ctx->pctx->operation = EVP_PKEY_OP_VERIFY;
            ctx->update = update;
        } else if (FUNC5(ctx->pctx) <= 0) {
            return 0;
        }
    } else {
        if (ctx->pctx->pmeth->signctx_init) {
            if (ctx->pctx->pmeth->signctx_init(ctx->pctx, ctx) <= 0)
                return 0;
            ctx->pctx->operation = EVP_PKEY_OP_SIGNCTX;
        } else if (ctx->pctx->pmeth->digestsign != 0) {
            ctx->pctx->operation = EVP_PKEY_OP_SIGN;
            ctx->update = update;
        } else if (FUNC4(ctx->pctx) <= 0) {
            return 0;
        }
    }
    if (FUNC2(ctx->pctx, type) <= 0)
        return 0;
    if (pctx)
        *pctx = ctx->pctx;
    if (ctx->pctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM)
        return 1;
    if (!FUNC0(ctx, type, e))
        return 0;
    /*
     * This indicates the current algorithm requires
     * special treatment before hashing the tbs-message.
     */
    if (ctx->pctx->pmeth->digest_custom != NULL)
        return ctx->pctx->pmeth->digest_custom(ctx->pctx, ctx);

    return 1;
}