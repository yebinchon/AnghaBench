
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
typedef int DH ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,unsigned int,int *) ;
 int BN_free (int *) ;
 int DH_set0_key (int *,int *,int *) ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_PKEY_copy_parameters (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get0_DH (int *) ;
 int * EVP_PKEY_new () ;
 int PACKET_get_bytes (int *,unsigned char const**,unsigned int) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 long PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_CKE_DHE ;
 int SSL_R_BN_LIB ;
 int SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG ;
 int SSL_R_MISSING_TMP_DH_KEY ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ ssl_derive (TYPE_3__*,int *,int *,int) ;

__attribute__((used)) static int tls_process_cke_dhe(SSL *s, PACKET *pkt)
{

    EVP_PKEY *skey = ((void*)0);
    DH *cdh;
    unsigned int i;
    BIGNUM *pub_key;
    const unsigned char *data;
    EVP_PKEY *ckey = ((void*)0);
    int ret = 0;

    if (!PACKET_get_net_2(pkt, &i) || PACKET_remaining(pkt) != i) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
               SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG);
        goto err;
    }
    skey = s->s3->tmp.pkey;
    if (skey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 SSL_R_MISSING_TMP_DH_KEY);
        goto err;
    }

    if (PACKET_remaining(pkt) == 0L) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 SSL_R_MISSING_TMP_DH_KEY);
        goto err;
    }
    if (!PACKET_get_bytes(pkt, &data, i)) {

        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    ckey = EVP_PKEY_new();
    if (ckey == ((void*)0) || EVP_PKEY_copy_parameters(ckey, skey) == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 SSL_R_BN_LIB);
        goto err;
    }

    cdh = EVP_PKEY_get0_DH(ckey);
    pub_key = BN_bin2bn(data, i, ((void*)0));
    if (pub_key == ((void*)0) || cdh == ((void*)0) || !DH_set0_key(cdh, pub_key, ((void*)0))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        BN_free(pub_key);
        goto err;
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
