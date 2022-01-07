
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int flags; int nid; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_ec_paramgen_curve_nid (int *,int ) ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ EVP_PKEY_paramgen (int *,int **) ;
 scalar_t__ EVP_PKEY_paramgen_init (int *) ;
 scalar_t__ EVP_PKEY_set_type (int *,int ) ;
 int TLS_CURVE_CUSTOM ;
 int TLS_CURVE_TYPE ;
 TYPE_1__* tls1_group_id_lookup (int ) ;

EVP_PKEY *ssl_generate_param_group(uint16_t id)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    const TLS_GROUP_INFO *ginf = tls1_group_id_lookup(id);

    if (ginf == ((void*)0))
        goto err;

    if ((ginf->flags & TLS_CURVE_TYPE) == TLS_CURVE_CUSTOM) {
        pkey = EVP_PKEY_new();
        if (pkey != ((void*)0) && EVP_PKEY_set_type(pkey, ginf->nid))
            return pkey;
        EVP_PKEY_free(pkey);
        return ((void*)0);
    }

    pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, ((void*)0));
    if (pctx == ((void*)0))
        goto err;
    if (EVP_PKEY_paramgen_init(pctx) <= 0)
        goto err;
    if (EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, ginf->nid) <= 0)
        goto err;
    if (EVP_PKEY_paramgen(pctx, &pkey) <= 0) {
        EVP_PKEY_free(pkey);
        pkey = ((void*)0);
    }

 err:
    EVP_PKEY_CTX_free(pctx);
    return pkey;
}
