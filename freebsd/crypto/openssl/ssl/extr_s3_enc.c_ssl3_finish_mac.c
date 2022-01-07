
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* s3; } ;
struct TYPE_5__ {int * handshake_dgst; int handshake_buffer; } ;
typedef TYPE_2__ SSL ;


 int BIO_write (int ,void*,int) ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 size_t INT_MAX ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_FINISH_MAC ;
 int SSL_R_OVERFLOW_ERROR ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int ssl3_finish_mac(SSL *s, const unsigned char *buf, size_t len)
{
    int ret;

    if (s->s3->handshake_dgst == ((void*)0)) {

        if (len > INT_MAX) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINISH_MAC,
                     SSL_R_OVERFLOW_ERROR);
            return 0;
        }
        ret = BIO_write(s->s3->handshake_buffer, (void *)buf, (int)len);
        if (ret <= 0 || ret != (int)len) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINISH_MAC,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    } else {
        ret = EVP_DigestUpdate(s->s3->handshake_dgst, buf, len);
        if (!ret) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINISH_MAC,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    return 1;
}
