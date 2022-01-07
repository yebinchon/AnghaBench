
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* s3; } ;
struct TYPE_6__ {int * handshake_buffer; } ;
typedef TYPE_2__ SSL ;
typedef int BIO ;


 int BIO_CLOSE ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_set_close (int *,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_INIT_FINISHED_MAC ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int ssl3_free_digest_list (TYPE_2__*) ;

int ssl3_init_finished_mac(SSL *s)
{
    BIO *buf = BIO_new(BIO_s_mem());

    if (buf == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_INIT_FINISHED_MAC,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ssl3_free_digest_list(s);
    s->s3->handshake_buffer = buf;
    (void)BIO_set_close(s->s3->handshake_buffer, BIO_CLOSE);
    return 1;
}
