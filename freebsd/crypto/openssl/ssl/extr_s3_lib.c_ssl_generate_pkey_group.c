
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int flags; int nid; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;
typedef int SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_ec_paramgen_curve_nid (int *,int ) ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_keygen (int *,int **) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL_GENERATE_PKEY_GROUP ;
 int SSLfatal (int *,int ,int ,int ) ;
 int TLS_CURVE_CUSTOM ;
 int TLS_CURVE_TYPE ;
 TYPE_1__* tls1_group_id_lookup (int) ;

EVP_PKEY *ssl_generate_pkey_group(SSL *s, uint16_t id)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    const TLS_GROUP_INFO *ginf = tls1_group_id_lookup(id);
    uint16_t gtype;

    if (ginf == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    gtype = ginf->flags & TLS_CURVE_TYPE;
    if (gtype == TLS_CURVE_CUSTOM)
        pctx = EVP_PKEY_CTX_new_id(ginf->nid, ((void*)0));
    else
        pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, ((void*)0));
    if (pctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (EVP_PKEY_keygen_init(pctx) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        goto err;
    }
    if (gtype != TLS_CURVE_CUSTOM
            && EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, ginf->nid) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        goto err;
    }
    if (EVP_PKEY_keygen(pctx, &pkey) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        EVP_PKEY_free(pkey);
        pkey = ((void*)0);
    }

 err:
    EVP_PKEY_CTX_free(pctx);
    return pkey;
}
