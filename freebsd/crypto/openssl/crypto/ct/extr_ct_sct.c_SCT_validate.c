
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_8__ {int cert; int epoch_time_in_ms; int * issuer; int log_store; } ;
struct TYPE_7__ {scalar_t__ version; scalar_t__ validation_status; int log_id_len; int log_id; } ;
typedef int SCT_CTX ;
typedef TYPE_1__ SCT ;
typedef int EVP_PKEY ;
typedef TYPE_2__ CT_POLICY_EVAL_CTX ;
typedef int CTLOG ;


 int * CTLOG_STORE_get0_log_by_id (int ,int ,int ) ;
 int * CTLOG_get0_public_key (int const*) ;
 scalar_t__ CT_LOG_ENTRY_TYPE_PRECERT ;
 int SCT_CTX_free (int *) ;
 int * SCT_CTX_new () ;
 int SCT_CTX_set1_cert (int *,int ,int *) ;
 int SCT_CTX_set1_issuer_pubkey (int *,int *) ;
 int SCT_CTX_set1_pubkey (int *,int *) ;
 int SCT_CTX_set_time (int *,int ) ;
 int SCT_CTX_verify (int *,TYPE_1__*) ;
 scalar_t__ SCT_VALIDATION_STATUS_INVALID ;
 scalar_t__ SCT_VALIDATION_STATUS_UNKNOWN_LOG ;
 scalar_t__ SCT_VALIDATION_STATUS_UNKNOWN_VERSION ;
 void* SCT_VALIDATION_STATUS_UNVERIFIED ;
 scalar_t__ SCT_VALIDATION_STATUS_VALID ;
 scalar_t__ SCT_VERSION_V1 ;
 scalar_t__ SCT_get_log_entry_type (TYPE_1__*) ;
 int X509_PUBKEY_free (int *) ;
 int X509_PUBKEY_set (int **,int *) ;
 int * X509_get0_pubkey (int *) ;

int SCT_validate(SCT *sct, const CT_POLICY_EVAL_CTX *ctx)
{
    int is_sct_valid = -1;
    SCT_CTX *sctx = ((void*)0);
    X509_PUBKEY *pub = ((void*)0), *log_pkey = ((void*)0);
    const CTLOG *log;





    if (sct->version != SCT_VERSION_V1) {
        sct->validation_status = SCT_VALIDATION_STATUS_UNKNOWN_VERSION;
        return 0;
    }

    log = CTLOG_STORE_get0_log_by_id(ctx->log_store,
                                     sct->log_id, sct->log_id_len);


    if (log == ((void*)0)) {
        sct->validation_status = SCT_VALIDATION_STATUS_UNKNOWN_LOG;
        return 0;
    }

    sctx = SCT_CTX_new();
    if (sctx == ((void*)0))
        goto err;

    if (X509_PUBKEY_set(&log_pkey, CTLOG_get0_public_key(log)) != 1)
        goto err;
    if (SCT_CTX_set1_pubkey(sctx, log_pkey) != 1)
        goto err;

    if (SCT_get_log_entry_type(sct) == CT_LOG_ENTRY_TYPE_PRECERT) {
        EVP_PKEY *issuer_pkey;

        if (ctx->issuer == ((void*)0)) {
            sct->validation_status = SCT_VALIDATION_STATUS_UNVERIFIED;
            goto end;
        }

        issuer_pkey = X509_get0_pubkey(ctx->issuer);

        if (X509_PUBKEY_set(&pub, issuer_pkey) != 1)
            goto err;
        if (SCT_CTX_set1_issuer_pubkey(sctx, pub) != 1)
            goto err;
    }

    SCT_CTX_set_time(sctx, ctx->epoch_time_in_ms);
    if (SCT_CTX_set1_cert(sctx, ctx->cert, ((void*)0)) != 1)
        sct->validation_status = SCT_VALIDATION_STATUS_UNVERIFIED;
    else
        sct->validation_status = SCT_CTX_verify(sctx, sct) == 1 ?
            SCT_VALIDATION_STATUS_VALID : SCT_VALIDATION_STATUS_INVALID;

end:
    is_sct_valid = sct->validation_status == SCT_VALIDATION_STATUS_VALID;
err:
    X509_PUBKEY_free(pub);
    X509_PUBKEY_free(log_pkey);
    SCT_CTX_free(sctx);

    return is_sct_valid;
}
