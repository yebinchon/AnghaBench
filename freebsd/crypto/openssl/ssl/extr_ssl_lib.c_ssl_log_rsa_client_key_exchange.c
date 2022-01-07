
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL_LOG_RSA_CLIENT_KEY_EXCHANGE ;
 int SSLfatal (int *,int ,int ,int ) ;
 int nss_keylog_int (char*,int *,int const*,int,int const*,size_t) ;

int ssl_log_rsa_client_key_exchange(SSL *ssl,
                                    const uint8_t *encrypted_premaster,
                                    size_t encrypted_premaster_len,
                                    const uint8_t *premaster,
                                    size_t premaster_len)
{
    if (encrypted_premaster_len < 8) {
        SSLfatal(ssl, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SSL_LOG_RSA_CLIENT_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        return 0;
    }


    return nss_keylog_int("RSA",
                          ssl,
                          encrypted_premaster,
                          8,
                          premaster,
                          premaster_len);
}
