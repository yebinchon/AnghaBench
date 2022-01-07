
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* s3; int early_secret; int hit; } ;
struct TYPE_11__ {unsigned char* pms; size_t pmslen; } ;
struct TYPE_12__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 scalar_t__ EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 scalar_t__ EVP_PKEY_derive_set_peer (int *,int *) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL_DERIVE ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int ssl_generate_master_secret (TYPE_3__*,unsigned char*,size_t,int ) ;
 int ssl_handshake_md (TYPE_3__*) ;
 scalar_t__ tls13_generate_handshake_secret (TYPE_3__*,unsigned char*,size_t) ;
 int tls13_generate_secret (TYPE_3__*,int ,int *,int *,int ,unsigned char*) ;

int ssl_derive(SSL *s, EVP_PKEY *privkey, EVP_PKEY *pubkey, int gensecret)
{
    int rv = 0;
    unsigned char *pms = ((void*)0);
    size_t pmslen = 0;
    EVP_PKEY_CTX *pctx;

    if (privkey == ((void*)0) || pubkey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    pctx = EVP_PKEY_CTX_new(privkey, ((void*)0));

    if (EVP_PKEY_derive_init(pctx) <= 0
        || EVP_PKEY_derive_set_peer(pctx, pubkey) <= 0
        || EVP_PKEY_derive(pctx, ((void*)0), &pmslen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    pms = OPENSSL_malloc(pmslen);
    if (pms == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_PKEY_derive(pctx, pms, &pmslen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_DERIVE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (gensecret) {

        if (SSL_IS_TLS13(s)) {




            if (!s->hit)
                rv = tls13_generate_secret(s, ssl_handshake_md(s), ((void*)0), ((void*)0),
                                           0,
                                           (unsigned char *)&s->early_secret);
            else
                rv = 1;

            rv = rv && tls13_generate_handshake_secret(s, pms, pmslen);
        } else {
            rv = ssl_generate_master_secret(s, pms, pmslen, 0);
        }
    } else {

        s->s3->tmp.pms = pms;
        s->s3->tmp.pmslen = pmslen;
        pms = ((void*)0);
        rv = 1;
    }

 err:
    OPENSSL_clear_free(pms, pmslen);
    EVP_PKEY_CTX_free(pctx);
    return rv;
}
