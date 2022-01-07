
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int store_ctx; } ;
typedef TYPE_1__ X509_LOOKUP ;
typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 scalar_t__ BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 scalar_t__ ERR_GET_REASON (int ) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_PEM_LIB ;
 int ERR_R_SYS_LIB ;
 int ERR_clear_error () ;
 int ERR_peek_last_error () ;
 scalar_t__ PEM_R_NO_START_LINE ;
 int * PEM_read_bio_X509_AUX (int *,int *,int *,char*) ;
 int X509_FILETYPE_ASN1 ;
 int X509_FILETYPE_PEM ;
 int X509_F_X509_LOAD_CERT_FILE ;
 int X509_R_BAD_X509_FILETYPE ;
 int X509_R_NO_CERTIFICATE_FOUND ;
 int X509_STORE_add_cert (int ,int *) ;
 int X509_free (int *) ;
 int X509err (int ,int ) ;
 int * d2i_X509_bio (int *,int *) ;

int X509_load_cert_file(X509_LOOKUP *ctx, const char *file, int type)
{
    int ret = 0;
    BIO *in = ((void*)0);
    int i, count = 0;
    X509 *x = ((void*)0);

    in = BIO_new(BIO_s_file());

    if ((in == ((void*)0)) || (BIO_read_filename(in, file) <= 0)) {
        X509err(X509_F_X509_LOAD_CERT_FILE, ERR_R_SYS_LIB);
        goto err;
    }

    if (type == X509_FILETYPE_PEM) {
        for (;;) {
            x = PEM_read_bio_X509_AUX(in, ((void*)0), ((void*)0), "");
            if (x == ((void*)0)) {
                if ((ERR_GET_REASON(ERR_peek_last_error()) ==
                     PEM_R_NO_START_LINE) && (count > 0)) {
                    ERR_clear_error();
                    break;
                } else {
                    X509err(X509_F_X509_LOAD_CERT_FILE, ERR_R_PEM_LIB);
                    goto err;
                }
            }
            i = X509_STORE_add_cert(ctx->store_ctx, x);
            if (!i)
                goto err;
            count++;
            X509_free(x);
            x = ((void*)0);
        }
        ret = count;
    } else if (type == X509_FILETYPE_ASN1) {
        x = d2i_X509_bio(in, ((void*)0));
        if (x == ((void*)0)) {
            X509err(X509_F_X509_LOAD_CERT_FILE, ERR_R_ASN1_LIB);
            goto err;
        }
        i = X509_STORE_add_cert(ctx->store_ctx, x);
        if (!i)
            goto err;
        ret = i;
    } else {
        X509err(X509_F_X509_LOAD_CERT_FILE, X509_R_BAD_X509_FILETYPE);
        goto err;
    }
    if (ret == 0)
        X509err(X509_F_X509_LOAD_CERT_FILE, X509_R_NO_CERTIFICATE_FOUND);
 err:
    X509_free(x);
    BIO_free(in);
    return ret;
}
