
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int RSA_PSS_PARAMS ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestVerifyInit (int *,int **,int const*,int *,int *) ;
 scalar_t__ EVP_MD_type (int const*) ;
 scalar_t__ EVP_PKEY_CTX_get_signature_md (int *,int const**) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_mgf1_md (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_padding (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_pss_saltlen (int *,int) ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int RSA_F_RSA_PSS_TO_CTX ;
 int RSA_PKCS1_PSS_PADDING ;
 int RSA_PSS_PARAMS_free (int *) ;
 int RSA_R_DIGEST_DOES_NOT_MATCH ;
 int RSA_R_INVALID_PSS_PARAMETERS ;
 int RSA_R_UNSUPPORTED_SIGNATURE_TYPE ;
 int RSAerr (int ,int ) ;
 int * rsa_pss_decode (TYPE_1__*) ;
 int rsa_pss_get_param (int *,int const**,int const**,int*) ;

__attribute__((used)) static int rsa_pss_to_ctx(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pkctx,
                          X509_ALGOR *sigalg, EVP_PKEY *pkey)
{
    int rv = -1;
    int saltlen;
    const EVP_MD *mgf1md = ((void*)0), *md = ((void*)0);
    RSA_PSS_PARAMS *pss;


    if (OBJ_obj2nid(sigalg->algorithm) != EVP_PKEY_RSA_PSS) {
        RSAerr(RSA_F_RSA_PSS_TO_CTX, RSA_R_UNSUPPORTED_SIGNATURE_TYPE);
        return -1;
    }

    pss = rsa_pss_decode(sigalg);

    if (!rsa_pss_get_param(pss, &md, &mgf1md, &saltlen)) {
        RSAerr(RSA_F_RSA_PSS_TO_CTX, RSA_R_INVALID_PSS_PARAMETERS);
        goto err;
    }


    if (pkey) {
        if (!EVP_DigestVerifyInit(ctx, &pkctx, md, ((void*)0), pkey))
            goto err;
    } else {
        const EVP_MD *checkmd;
        if (EVP_PKEY_CTX_get_signature_md(pkctx, &checkmd) <= 0)
            goto err;
        if (EVP_MD_type(md) != EVP_MD_type(checkmd)) {
            RSAerr(RSA_F_RSA_PSS_TO_CTX, RSA_R_DIGEST_DOES_NOT_MATCH);
            goto err;
        }
    }

    if (EVP_PKEY_CTX_set_rsa_padding(pkctx, RSA_PKCS1_PSS_PADDING) <= 0)
        goto err;

    if (EVP_PKEY_CTX_set_rsa_pss_saltlen(pkctx, saltlen) <= 0)
        goto err;

    if (EVP_PKEY_CTX_set_rsa_mgf1_md(pkctx, mgf1md) <= 0)
        goto err;

    rv = 1;

 err:
    RSA_PSS_PARAMS_free(pss);
    return rv;
}
