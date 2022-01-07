
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wbio; int * bbio; } ;
typedef TYPE_1__ SSL ;
typedef int BIO ;


 int BIO_f_buffer () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_push (int *,int ) ;
 int BIO_set_read_buffer_size (int *,int) ;
 int ERR_R_BUF_LIB ;
 int SSL_F_SSL_INIT_WBIO_BUFFER ;
 int SSLerr (int ,int ) ;

int ssl_init_wbio_buffer(SSL *s)
{
    BIO *bbio;

    if (s->bbio != ((void*)0)) {

        return 1;
    }

    bbio = BIO_new(BIO_f_buffer());
    if (bbio == ((void*)0) || !BIO_set_read_buffer_size(bbio, 1)) {
        BIO_free(bbio);
        SSLerr(SSL_F_SSL_INIT_WBIO_BUFFER, ERR_R_BUF_LIB);
        return 0;
    }
    s->bbio = bbio;
    s->wbio = BIO_push(bbio, s->wbio);

    return 1;
}
