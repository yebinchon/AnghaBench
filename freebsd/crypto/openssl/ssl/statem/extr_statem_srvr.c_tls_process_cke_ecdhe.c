
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* s3; } ;
struct TYPE_7__ {int * pkey; } ;
struct TYPE_8__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;


 int ERR_R_EC_LIB ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_PKEY_copy_parameters (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ EVP_PKEY_set1_tls_encodedpoint (int *,unsigned char const*,unsigned int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_bytes (int *,unsigned char const**,unsigned int) ;
 long PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_CKE_ECDHE ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_MISSING_TMP_ECDH_KEY ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ ssl_derive (TYPE_3__*,int *,int *,int) ;

__attribute__((used)) static int tls_process_cke_ecdhe(SSL *s, PACKET *pkt)
{

    EVP_PKEY *skey = s->s3->tmp.pkey;
    EVP_PKEY *ckey = ((void*)0);
    int ret = 0;

    if (PACKET_remaining(pkt) == 0L) {

        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PROCESS_CKE_ECDHE,
                 SSL_R_MISSING_TMP_ECDH_KEY);
        goto err;
    } else {
        unsigned int i;
        const unsigned char *data;







        if (!PACKET_get_1(pkt, &i) || !PACKET_get_bytes(pkt, &data, i)
            || PACKET_remaining(pkt) != 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }
        if (skey == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     SSL_R_MISSING_TMP_ECDH_KEY);
            goto err;
        }

        ckey = EVP_PKEY_new();
        if (ckey == ((void*)0) || EVP_PKEY_copy_parameters(ckey, skey) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     ERR_R_EVP_LIB);
            goto err;
        }
        if (EVP_PKEY_set1_tls_encodedpoint(ckey, data, i) == 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     ERR_R_EC_LIB);
            goto err;
        }
    }

    if (ssl_derive(s, skey, ckey, 1) == 0) {

        goto err;
    }

    ret = 1;
    EVP_PKEY_free(s->s3->tmp.pkey);
    s->s3->tmp.pkey = ((void*)0);
 err:
    EVP_PKEY_free(ckey);

    return ret;






}
