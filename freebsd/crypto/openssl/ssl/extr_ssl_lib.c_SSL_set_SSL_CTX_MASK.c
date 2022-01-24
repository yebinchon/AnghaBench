#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  custext; } ;
struct TYPE_12__ {int sid_ctx_length; TYPE_1__* ctx; int /*<<< orphan*/  sid_ctx; TYPE_3__* cert; TYPE_1__* session_ctx; } ;
struct TYPE_11__ {int sid_ctx_length; int /*<<< orphan*/  sid_ctx; int /*<<< orphan*/  cert; } ;
typedef  TYPE_1__ SSL_CTX ;
typedef  TYPE_2__ SSL ;
typedef  TYPE_3__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

SSL_CTX *FUNC8(SSL *ssl, SSL_CTX *ctx)
{
    CERT *new_cert;
    if (ssl->ctx == ctx)
        return ssl->ctx;
    if (ctx == NULL)
        ctx = ssl->session_ctx;
    new_cert = FUNC6(ctx->cert);
    if (new_cert == NULL) {
        return NULL;
    }

    if (!FUNC2(&new_cert->custext, &ssl->cert->custext)) {
        FUNC7(new_cert);
        return NULL;
    }

    FUNC7(ssl->cert);
    ssl->cert = new_cert;

    /*
     * Program invariant: |sid_ctx| has fixed size (SSL_MAX_SID_CTX_LENGTH),
     * so setter APIs must prevent invalid lengths from entering the system.
     */
    if (!FUNC5(ssl->sid_ctx_length <= sizeof(ssl->sid_ctx)))
        return NULL;

    /*
     * If the session ID context matches that of the parent SSL_CTX,
     * inherit it from the new SSL_CTX as well. If however the context does
     * not match (i.e., it was set per-ssl with SSL_set_session_id_context),
     * leave it unchanged.
     */
    if ((ssl->ctx != NULL) &&
        (ssl->sid_ctx_length == ssl->ctx->sid_ctx_length) &&
        (FUNC3(ssl->sid_ctx, ssl->ctx->sid_ctx, ssl->sid_ctx_length) == 0)) {
        ssl->sid_ctx_length = ctx->sid_ctx_length;
        FUNC4(&ssl->sid_ctx, &ctx->sid_ctx, sizeof(ssl->sid_ctx));
    }

    FUNC1(ctx);
    FUNC0(ssl->ctx);     /* decrement reference count */
    ssl->ctx = ctx;

    return ssl->ctx;
}