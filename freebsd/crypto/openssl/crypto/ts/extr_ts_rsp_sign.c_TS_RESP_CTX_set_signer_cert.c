
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * signer_cert; } ;
typedef TYPE_1__ TS_RESP_CTX ;


 int TS_F_TS_RESP_CTX_SET_SIGNER_CERT ;
 int TS_R_INVALID_SIGNER_CERTIFICATE_PURPOSE ;
 int TSerr (int ,int ) ;
 int X509_PURPOSE_TIMESTAMP_SIGN ;
 int X509_check_purpose (int *,int ,int ) ;
 int X509_free (int *) ;
 int X509_up_ref (int *) ;

int TS_RESP_CTX_set_signer_cert(TS_RESP_CTX *ctx, X509 *signer)
{
    if (X509_check_purpose(signer, X509_PURPOSE_TIMESTAMP_SIGN, 0) != 1) {
        TSerr(TS_F_TS_RESP_CTX_SET_SIGNER_CERT,
              TS_R_INVALID_SIGNER_CERTIFICATE_PURPOSE);
        return 0;
    }
    X509_free(ctx->signer_cert);
    ctx->signer_cert = signer;
    X509_up_ref(ctx->signer_cert);
    return 1;
}
