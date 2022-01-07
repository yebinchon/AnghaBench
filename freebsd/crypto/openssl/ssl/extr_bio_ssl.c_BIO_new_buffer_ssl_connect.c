
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int BIO ;


 int BIO_f_buffer () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int * BIO_new_ssl_connect (int *) ;
 int * BIO_push (int *,int *) ;

BIO *BIO_new_buffer_ssl_connect(SSL_CTX *ctx)
{

    BIO *ret = ((void*)0), *buf = ((void*)0), *ssl = ((void*)0);

    if ((buf = BIO_new(BIO_f_buffer())) == ((void*)0))
        return ((void*)0);
    if ((ssl = BIO_new_ssl_connect(ctx)) == ((void*)0))
        goto err;
    if ((ret = BIO_push(buf, ssl)) == ((void*)0))
        goto err;
    return ret;
 err:
    BIO_free(buf);
    BIO_free(ssl);

    return ((void*)0);
}
