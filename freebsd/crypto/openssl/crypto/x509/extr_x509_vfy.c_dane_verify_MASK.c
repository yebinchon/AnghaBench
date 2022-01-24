#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int (* verify_cb ) (int,TYPE_1__*) ;int /*<<< orphan*/  error; int /*<<< orphan*/ * current_cert; scalar_t__ error_depth; int /*<<< orphan*/  chain; int /*<<< orphan*/ * cert; TYPE_2__* dane; } ;
typedef  TYPE_1__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_13__ {scalar_t__ mdpth; int flags; } ;
typedef  TYPE_2__ SSL_DANE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int DANE_FLAG_NO_DANE_EE_NAMECHECKS ; 
 int /*<<< orphan*/  X509_V_ERR_DANE_NO_MATCH ; 
 int /*<<< orphan*/  X509_V_ERR_OUT_OF_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(X509_STORE_CTX *ctx)
{
    X509 *cert = ctx->cert;
    SSL_DANE *dane = ctx->dane;
    int matched;
    int done;

    FUNC5(dane);

    /*-
     * When testing the leaf certificate, if we match a DANE-EE(3) record,
     * dane_match() returns 1 and we're done.  If however we match a PKIX-EE(1)
     * record, the match depth and matching TLSA record are recorded, but the
     * return value is 0, because we still need to find a PKIX trust-anchor.
     * Therefore, when DANE authentication is enabled (required), we're done
     * if:
     *   + matched < 0, internal error.
     *   + matched == 1, we matched a DANE-EE(3) record
     *   + matched == 0, mdepth < 0 (no PKIX-EE match) and there are no
     *     DANE-TA(2) or PKIX-TA(0) to test.
     */
    matched = FUNC4(ctx, ctx->cert, 0);
    done = matched != 0 || (!FUNC0(dane) && dane->mdpth < 0);

    if (done)
        FUNC1(NULL, ctx->chain);

    if (matched > 0) {
        /* Callback invoked as needed */
        if (!FUNC3(ctx, cert))
            return 0;
        /* Callback invoked as needed */
        if ((dane->flags & DANE_FLAG_NO_DANE_EE_NAMECHECKS) == 0 &&
            !FUNC2(ctx))
            return 0;
        /* Bypass internal_verify(), issue depth 0 success callback */
        ctx->error_depth = 0;
        ctx->current_cert = cert;
        return ctx->verify_cb(1, ctx);
    }

    if (matched < 0) {
        ctx->error_depth = 0;
        ctx->current_cert = cert;
        ctx->error = X509_V_ERR_OUT_OF_MEM;
        return -1;
    }

    if (done) {
        /* Fail early, TA-based success is not possible */
        if (!FUNC3(ctx, cert))
            return 0;
        return FUNC7(ctx, cert, 0, X509_V_ERR_DANE_NO_MATCH);
    }

    /*
     * Chain verification for usages 0/1/2.  TLSA record matching of depth > 0
     * certificates happens in-line with building the rest of the chain.
     */
    return FUNC8(ctx);
}