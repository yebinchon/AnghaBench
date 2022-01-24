#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ error; int num_untrusted; int /*<<< orphan*/ * cert; int /*<<< orphan*/ * chain; int /*<<< orphan*/ * dane; } ;
typedef  TYPE_1__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  SSL_DANE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int /*<<< orphan*/  X509_F_X509_VERIFY_CERT ; 
 int /*<<< orphan*/  X509_R_NO_CERT_SET_FOR_US_TO_VERIFY ; 
 int /*<<< orphan*/  X509_V_ERR_EE_KEY_TOO_SMALL ; 
 void* X509_V_ERR_INVALID_CALL ; 
 scalar_t__ X509_V_ERR_OUT_OF_MEM ; 
 scalar_t__ X509_V_ERR_UNSPECIFIED ; 
 scalar_t__ X509_V_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 

int FUNC9(X509_STORE_CTX *ctx)
{
    SSL_DANE *dane = ctx->dane;
    int ret;

    if (ctx->cert == NULL) {
        FUNC2(X509_F_X509_VERIFY_CERT, X509_R_NO_CERT_SET_FOR_US_TO_VERIFY);
        ctx->error = X509_V_ERR_INVALID_CALL;
        return -1;
    }

    if (ctx->chain != NULL) {
        /*
         * This X509_STORE_CTX has already been used to verify a cert. We
         * cannot do another one.
         */
        FUNC2(X509_F_X509_VERIFY_CERT, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        ctx->error = X509_V_ERR_INVALID_CALL;
        return -1;
    }

    /*
     * first we make sure the chain we are going to build is present and that
     * the first entry is in place
     */
    if (((ctx->chain = FUNC5()) == NULL) ||
        (!FUNC6(ctx->chain, ctx->cert))) {
        FUNC2(X509_F_X509_VERIFY_CERT, ERR_R_MALLOC_FAILURE);
        ctx->error = X509_V_ERR_OUT_OF_MEM;
        return -1;
    }
    FUNC1(ctx->cert);
    ctx->num_untrusted = 1;

    /* If the peer's public key is too weak, we can stop early. */
    if (!FUNC3(ctx, ctx->cert) &&
        !FUNC7(ctx, ctx->cert, 0, X509_V_ERR_EE_KEY_TOO_SMALL))
        return 0;

    if (FUNC0(dane))
        ret = FUNC4(ctx);
    else
        ret = FUNC8(ctx);

    /*
     * Safety-net.  If we are returning an error, we must also set ctx->error,
     * so that the chain is not considered verified should the error be ignored
     * (e.g. TLS with SSL_VERIFY_NONE).
     */
    if (ret <= 0 && ctx->error == X509_V_OK)
        ctx->error = X509_V_ERR_UNSPECIFIED;
    return ret;
}