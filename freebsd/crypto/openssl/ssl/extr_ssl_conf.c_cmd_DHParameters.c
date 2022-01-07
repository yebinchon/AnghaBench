
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; scalar_t__ ctx; } ;
typedef TYPE_1__ SSL_CONF_CTX ;
typedef int DH ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 scalar_t__ BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 int DH_free (int *) ;
 int * PEM_read_bio_DHparams (int *,int *,int *,int *) ;
 int SSL_CTX_set_tmp_dh (scalar_t__,int *) ;
 int SSL_set_tmp_dh (scalar_t__,int *) ;

__attribute__((used)) static int cmd_DHParameters(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 0;
    DH *dh = ((void*)0);
    BIO *in = ((void*)0);
    if (cctx->ctx || cctx->ssl) {
        in = BIO_new(BIO_s_file());
        if (in == ((void*)0))
            goto end;
        if (BIO_read_filename(in, value) <= 0)
            goto end;
        dh = PEM_read_bio_DHparams(in, ((void*)0), ((void*)0), ((void*)0));
        if (dh == ((void*)0))
            goto end;
    } else
        return 1;
    if (cctx->ctx)
        rv = SSL_CTX_set_tmp_dh(cctx->ctx, dh);
    if (cctx->ssl)
        rv = SSL_set_tmp_dh(cctx->ssl, dh);
 end:
    DH_free(dh);
    BIO_free(in);
    return rv > 0;
}
