
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_7__ {TYPE_1__* s3; } ;
struct TYPE_6__ {int * peer_tmp; } ;
typedef TYPE_2__ SSL ;
typedef int EVP_PKEY ;
typedef int DH ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,unsigned char*) ;
 int BN_num_bytes (int const*) ;
 int DH_get0_key (int *,int const**,int *) ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get0_DH (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CKE_DHE ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int WPACKET_sub_allocate_bytes_u16 (int *,int ,unsigned char**) ;
 scalar_t__ ssl_derive (TYPE_2__*,int *,int *,int ) ;
 int * ssl_generate_pkey (int *) ;

__attribute__((used)) static int tls_construct_cke_dhe(SSL *s, WPACKET *pkt)
{

    DH *dh_clnt = ((void*)0);
    const BIGNUM *pub_key;
    EVP_PKEY *ckey = ((void*)0), *skey = ((void*)0);
    unsigned char *keybytes = ((void*)0);

    skey = s->s3->peer_tmp;
    if (skey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ckey = ssl_generate_pkey(skey);
    if (ckey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    dh_clnt = EVP_PKEY_get0_DH(ckey);

    if (dh_clnt == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (ssl_derive(s, ckey, skey, 0) == 0) {

        goto err;
    }


    DH_get0_key(dh_clnt, &pub_key, ((void*)0));
    if (!WPACKET_sub_allocate_bytes_u16(pkt, BN_num_bytes(pub_key),
                                        &keybytes)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    BN_bn2bin(pub_key, keybytes);
    EVP_PKEY_free(ckey);

    return 1;
 err:
    EVP_PKEY_free(ckey);
    return 0;





}
