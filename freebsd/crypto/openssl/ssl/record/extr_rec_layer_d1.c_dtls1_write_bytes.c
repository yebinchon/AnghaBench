
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rwstate; } ;
typedef TYPE_1__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 size_t SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS1_WRITE_BYTES ;
 int SSL_NOTHING ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int do_dtls1_write (TYPE_1__*,int,void const*,size_t,int ,size_t*) ;
 int ossl_assert (int) ;

int dtls1_write_bytes(SSL *s, int type, const void *buf, size_t len,
                      size_t *written)
{
    int i;

    if (!ossl_assert(len <= SSL3_RT_MAX_PLAIN_LENGTH)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_WRITE_BYTES,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }
    s->rwstate = SSL_NOTHING;
    i = do_dtls1_write(s, type, buf, len, 0, written);
    return i;
}
