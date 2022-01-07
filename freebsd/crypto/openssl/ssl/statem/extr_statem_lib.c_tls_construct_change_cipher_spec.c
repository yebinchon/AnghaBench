
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL3_MT_CCS ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CHANGE_CIPHER_SPEC ;
 int SSLfatal (int *,int ,int ,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;

int tls_construct_change_cipher_spec(SSL *s, WPACKET *pkt)
{
    if (!WPACKET_put_bytes_u8(pkt, SSL3_MT_CCS)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CHANGE_CIPHER_SPEC, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
