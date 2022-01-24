#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int error_depth; int current_crl_score; TYPE_1__* param; TYPE_4__* current_issuer; int /*<<< orphan*/  (* check_issued ) (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;int /*<<< orphan*/  chain; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
struct TYPE_21__ {int idp_flags; int /*<<< orphan*/  base_crl_number; } ;
typedef  TYPE_3__ X509_CRL ;
struct TYPE_22__ {int ex_flags; int ex_kusage; } ;
typedef  TYPE_4__ X509 ;
struct TYPE_19__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int CRL_SCORE_SAME_PATH ; 
 int CRL_SCORE_SCOPE ; 
 int CRL_SCORE_TIME ; 
 int EXFLAG_KUSAGE ; 
 int IDP_INVALID ; 
 int KU_CRL_SIGN ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int X509_V_ERR_CRL_PATH_VALIDATION_ERROR ; 
 int X509_V_ERR_CRL_SIGNATURE_FAILURE ; 
 int X509_V_ERR_DIFFERENT_CRL_SCOPE ; 
 int X509_V_ERR_INVALID_EXTENSION ; 
 int X509_V_ERR_KEYUSAGE_NO_CRL_SIGN ; 
 int X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY ; 
 int X509_V_ERR_UNABLE_TO_GET_CRL_ISSUER ; 
 int X509_V_OK ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC9(X509_STORE_CTX *ctx, X509_CRL *crl)
{
    X509 *issuer = NULL;
    EVP_PKEY *ikey = NULL;
    int cnum = ctx->error_depth;
    int chnum = FUNC5(ctx->chain) - 1;

    /* if we have an alternative CRL issuer cert use that */
    if (ctx->current_issuer)
        issuer = ctx->current_issuer;
    /*
     * Else find CRL issuer: if not last certificate then issuer is next
     * certificate in chain.
     */
    else if (cnum < chnum)
        issuer = FUNC6(ctx->chain, cnum + 1);
    else {
        issuer = FUNC6(ctx->chain, chnum);
        /* If not self signed, can't check signature */
        if (!ctx->check_issued(ctx, issuer, issuer) &&
            !FUNC8(ctx, X509_V_ERR_UNABLE_TO_GET_CRL_ISSUER))
            return 0;
    }

    if (issuer == NULL)
        return 1;

    /*
     * Skip most tests for deltas because they have already been done
     */
    if (!crl->base_crl_number) {
        /* Check for cRLSign bit if keyUsage present */
        if ((issuer->ex_flags & EXFLAG_KUSAGE) &&
            !(issuer->ex_kusage & KU_CRL_SIGN) &&
            !FUNC8(ctx, X509_V_ERR_KEYUSAGE_NO_CRL_SIGN))
            return 0;

        if (!(ctx->current_crl_score & CRL_SCORE_SCOPE) &&
            !FUNC8(ctx, X509_V_ERR_DIFFERENT_CRL_SCOPE))
            return 0;

        if (!(ctx->current_crl_score & CRL_SCORE_SAME_PATH) &&
            FUNC3(ctx, ctx->current_issuer) <= 0 &&
            !FUNC8(ctx, X509_V_ERR_CRL_PATH_VALIDATION_ERROR))
            return 0;

        if ((crl->idp_flags & IDP_INVALID) &&
            !FUNC8(ctx, X509_V_ERR_INVALID_EXTENSION))
            return 0;
    }

    if (!(ctx->current_crl_score & CRL_SCORE_TIME) &&
        !FUNC4(ctx, crl, 1))
        return 0;

    /* Attempt to get issuer certificate public key */
    ikey = FUNC2(issuer);

    if (!ikey &&
        !FUNC8(ctx, X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY))
        return 0;

    if (ikey) {
        int rv = FUNC0(crl, ikey, ctx->param->flags);

        if (rv != X509_V_OK && !FUNC8(ctx, rv))
            return 0;
        /* Verify CRL signature */
        if (FUNC1(crl, ikey) <= 0 &&
            !FUNC8(ctx, X509_V_ERR_CRL_SIGNATURE_FAILURE))
            return 0;
    }
    return 1;
}