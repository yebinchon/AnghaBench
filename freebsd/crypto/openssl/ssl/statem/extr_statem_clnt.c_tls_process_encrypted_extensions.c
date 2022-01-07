
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int RAW_EXTENSION ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 int OPENSSL_free (int *) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ;
 int SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSLfatal (int *,int ,int ,int ) ;
 int tls_collect_extensions (int *,int *,int ,int **,int *,int) ;
 int tls_parse_all_extensions (int *,int ,int *,int *,int ,int) ;

__attribute__((used)) static MSG_PROCESS_RETURN tls_process_encrypted_extensions(SSL *s, PACKET *pkt)
{
    PACKET extensions;
    RAW_EXTENSION *rawexts = ((void*)0);

    if (!PACKET_as_length_prefixed_2(pkt, &extensions)
            || PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_ENCRYPTED_EXTENSIONS,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    if (!tls_collect_extensions(s, &extensions,
                                SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, &rawexts,
                                ((void*)0), 1)
            || !tls_parse_all_extensions(s, SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS,
                                         rawexts, ((void*)0), 0, 1)) {

        goto err;
    }

    OPENSSL_free(rawexts);
    return MSG_PROCESS_CONTINUE_READING;

 err:
    OPENSSL_free(rawexts);
    return MSG_PROCESS_ERROR;
}
