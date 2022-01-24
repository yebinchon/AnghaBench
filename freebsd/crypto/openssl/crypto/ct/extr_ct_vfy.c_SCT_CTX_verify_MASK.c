#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ entry_type; scalar_t__ version; scalar_t__ log_id_len; scalar_t__ timestamp; int /*<<< orphan*/  sig_len; int /*<<< orphan*/  sig; int /*<<< orphan*/  log_id; } ;
struct TYPE_8__ {scalar_t__ pkeyhashlen; scalar_t__ epoch_time_in_ms; int /*<<< orphan*/ * pkey; int /*<<< orphan*/  pkeyhash; int /*<<< orphan*/ * ihash; } ;
typedef  TYPE_1__ SCT_CTX ;
typedef  TYPE_2__ SCT ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_SCT_CTX_VERIFY ; 
 scalar_t__ CT_LOG_ENTRY_TYPE_NOT_SET ; 
 scalar_t__ CT_LOG_ENTRY_TYPE_PRECERT ; 
 int /*<<< orphan*/  CT_R_SCT_FUTURE_TIMESTAMP ; 
 int /*<<< orphan*/  CT_R_SCT_INVALID_SIGNATURE ; 
 int /*<<< orphan*/  CT_R_SCT_LOG_ID_MISMATCH ; 
 int /*<<< orphan*/  CT_R_SCT_NOT_SET ; 
 int /*<<< orphan*/  CT_R_SCT_UNSUPPORTED_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ SCT_VERSION_V1 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_2__ const*) ; 

int FUNC9(const SCT_CTX *sctx, const SCT *sct)
{
    EVP_MD_CTX *ctx = NULL;
    int ret = 0;

    if (!FUNC6(sct) || sctx->pkey == NULL ||
        sct->entry_type == CT_LOG_ENTRY_TYPE_NOT_SET ||
        (sct->entry_type == CT_LOG_ENTRY_TYPE_PRECERT && sctx->ihash == NULL)) {
        FUNC0(CT_F_SCT_CTX_VERIFY, CT_R_SCT_NOT_SET);
        return 0;
    }
    if (sct->version != SCT_VERSION_V1) {
        FUNC0(CT_F_SCT_CTX_VERIFY, CT_R_SCT_UNSUPPORTED_VERSION);
        return 0;
    }
    if (sct->log_id_len != sctx->pkeyhashlen ||
        FUNC7(sct->log_id, sctx->pkeyhash, sctx->pkeyhashlen) != 0) {
        FUNC0(CT_F_SCT_CTX_VERIFY, CT_R_SCT_LOG_ID_MISMATCH);
        return 0;
    }
    if (sct->timestamp > sctx->epoch_time_in_ms) {
        FUNC0(CT_F_SCT_CTX_VERIFY, CT_R_SCT_FUTURE_TIMESTAMP);
        return 0;
    }

    ctx = FUNC4();
    if (ctx == NULL)
        goto end;

    if (!FUNC2(ctx, NULL, FUNC5(), NULL, sctx->pkey))
        goto end;

    if (!FUNC8(ctx, sctx, sct))
        goto end;

    /* Verify signature */
    ret = FUNC1(ctx, sct->sig, sct->sig_len);
    /* If ret < 0 some other error: fall through without setting error */
    if (ret == 0)
        FUNC0(CT_F_SCT_CTX_VERIFY, CT_R_SCT_INVALID_SIGNATURE);

end:
    FUNC3(ctx);
    return ret;
}