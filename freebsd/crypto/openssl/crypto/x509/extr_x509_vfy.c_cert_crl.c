
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_12__ {scalar_t__ reason; } ;
typedef TYPE_3__ X509_REVOKED ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_4__ X509_CRL ;
typedef int X509 ;
struct TYPE_10__ {int flags; } ;


 scalar_t__ CRL_REASON_REMOVE_FROM_CRL ;
 int EXFLAG_CRITICAL ;
 scalar_t__ X509_CRL_get0_by_cert (TYPE_4__*,TYPE_3__**,int *) ;
 int X509_V_ERR_CERT_REVOKED ;
 int X509_V_ERR_UNHANDLED_CRITICAL_CRL_EXTENSION ;
 int X509_V_FLAG_IGNORE_CRITICAL ;
 int verify_cb_crl (TYPE_2__*,int ) ;

__attribute__((used)) static int cert_crl(X509_STORE_CTX *ctx, X509_CRL *crl, X509 *x)
{
    X509_REVOKED *rev;







    if (!(ctx->param->flags & X509_V_FLAG_IGNORE_CRITICAL)
        && (crl->flags & EXFLAG_CRITICAL) &&
        !verify_cb_crl(ctx, X509_V_ERR_UNHANDLED_CRITICAL_CRL_EXTENSION))
        return 0;




    if (X509_CRL_get0_by_cert(crl, &rev, x)) {
        if (rev->reason == CRL_REASON_REMOVE_FROM_CRL)
            return 2;
        if (!verify_cb_crl(ctx, X509_V_ERR_CERT_REVOKED))
            return 0;
    }

    return 1;
}
