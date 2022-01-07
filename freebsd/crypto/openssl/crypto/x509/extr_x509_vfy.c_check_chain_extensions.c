
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {void* error; TYPE_1__* param; int chain; scalar_t__ parent; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_13__ {int ex_flags; int ex_pathlen; int ex_pcpathlen; } ;
typedef TYPE_3__ X509 ;
struct TYPE_11__ {int flags; int purpose; } ;


 int EXFLAG_CRITICAL ;
 int EXFLAG_PROXY ;
 int EXFLAG_SI ;
 int X509_PURPOSE_CRL_SIGN ;
 void* X509_V_ERR_INVALID_CA ;
 void* X509_V_ERR_INVALID_NON_CA ;
 int X509_V_ERR_PATH_LENGTH_EXCEEDED ;
 int X509_V_ERR_PROXY_CERTIFICATES_NOT_ALLOWED ;
 int X509_V_ERR_PROXY_PATH_LENGTH_EXCEEDED ;
 int X509_V_ERR_UNHANDLED_CRITICAL_EXTENSION ;
 int X509_V_FLAG_ALLOW_PROXY_CERTS ;
 int X509_V_FLAG_IGNORE_CRITICAL ;
 int X509_V_FLAG_X509_STRICT ;
 int X509_V_OK ;
 int X509_check_ca (TYPE_3__*) ;
 int check_purpose (TYPE_2__*,TYPE_3__*,int,int,int) ;
 int sk_X509_num (int ) ;
 TYPE_3__* sk_X509_value (int ,int) ;
 int verify_cb_cert (TYPE_2__*,TYPE_3__*,int,int ) ;

__attribute__((used)) static int check_chain_extensions(X509_STORE_CTX *ctx)
{
    int i, must_be_ca, plen = 0;
    X509 *x;
    int proxy_path_length = 0;
    int purpose;
    int allow_proxy_certs;
    int num = sk_X509_num(ctx->chain);
    must_be_ca = -1;


    if (ctx->parent) {
        allow_proxy_certs = 0;
        purpose = X509_PURPOSE_CRL_SIGN;
    } else {
        allow_proxy_certs =
            ! !(ctx->param->flags & X509_V_FLAG_ALLOW_PROXY_CERTS);
        purpose = ctx->param->purpose;
    }

    for (i = 0; i < num; i++) {
        int ret;
        x = sk_X509_value(ctx->chain, i);
        if (!(ctx->param->flags & X509_V_FLAG_IGNORE_CRITICAL)
            && (x->ex_flags & EXFLAG_CRITICAL)) {
            if (!verify_cb_cert(ctx, x, i,
                                X509_V_ERR_UNHANDLED_CRITICAL_EXTENSION))
                return 0;
        }
        if (!allow_proxy_certs && (x->ex_flags & EXFLAG_PROXY)) {
            if (!verify_cb_cert(ctx, x, i,
                                X509_V_ERR_PROXY_CERTIFICATES_NOT_ALLOWED))
                return 0;
        }
        ret = X509_check_ca(x);
        switch (must_be_ca) {
        case -1:
            if ((ctx->param->flags & X509_V_FLAG_X509_STRICT)
                && (ret != 1) && (ret != 0)) {
                ret = 0;
                ctx->error = X509_V_ERR_INVALID_CA;
            } else
                ret = 1;
            break;
        case 0:
            if (ret != 0) {
                ret = 0;
                ctx->error = X509_V_ERR_INVALID_NON_CA;
            } else
                ret = 1;
            break;
        default:

            if ((ret == 0)
                || ((i + 1 < num || ctx->param->flags & X509_V_FLAG_X509_STRICT)
                    && (ret != 1))) {
                ret = 0;
                ctx->error = X509_V_ERR_INVALID_CA;
            } else
                ret = 1;
            break;
        }
        if (ret == 0 && !verify_cb_cert(ctx, x, i, X509_V_OK))
            return 0;

        if (purpose > 0 && !check_purpose(ctx, x, purpose, i, must_be_ca))
            return 0;

        if ((i > 1) && (x->ex_pathlen != -1)
            && (plen > (x->ex_pathlen + proxy_path_length))) {
            if (!verify_cb_cert(ctx, x, i, X509_V_ERR_PATH_LENGTH_EXCEEDED))
                return 0;
        }

        if (i > 0 && (x->ex_flags & EXFLAG_SI) == 0)
            plen++;





        if (x->ex_flags & EXFLAG_PROXY) {
            if (x->ex_pcpathlen != -1) {
                if (proxy_path_length > x->ex_pcpathlen) {
                    if (!verify_cb_cert(ctx, x, i,
                                        X509_V_ERR_PROXY_PATH_LENGTH_EXCEEDED))
                        return 0;
                }
                proxy_path_length = x->ex_pcpathlen;
            }
            proxy_path_length++;
            must_be_ca = 0;
        } else
            must_be_ca = 1;
    }
    return 1;
}
