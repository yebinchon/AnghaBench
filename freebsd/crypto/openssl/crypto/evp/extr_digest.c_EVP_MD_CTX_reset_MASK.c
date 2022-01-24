#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  engine; int /*<<< orphan*/  pctx; TYPE_1__* digest; scalar_t__ md_data; } ;
struct TYPE_7__ {scalar_t__ ctx_size; int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_CLEANED ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_KEEP_PKEY_CTX ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_REUSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6(EVP_MD_CTX *ctx)
{
    if (ctx == NULL)
        return 1;

    /*
     * Don't assume ctx->md_data was cleaned in EVP_Digest_Final, because
     * sometimes only copies of the context are ever finalised.
     */
    if (ctx->digest && ctx->digest->cleanup
        && !FUNC1(ctx, EVP_MD_CTX_FLAG_CLEANED))
        ctx->digest->cleanup(ctx);
    if (ctx->digest && ctx->digest->ctx_size && ctx->md_data
        && !FUNC1(ctx, EVP_MD_CTX_FLAG_REUSE)) {
        FUNC4(ctx->md_data, ctx->digest->ctx_size);
    }
    /*
     * pctx should be freed by the user of EVP_MD_CTX
     * if EVP_MD_CTX_FLAG_KEEP_PKEY_CTX is set
     */
    if (!FUNC1(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX))
        FUNC2(ctx->pctx);
#ifndef OPENSSL_NO_ENGINE
    FUNC0(ctx->engine);
#endif
    FUNC3(ctx, sizeof(*ctx));

    return 1;
}