
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_7__ {TYPE_1__* rsa; } ;
struct TYPE_8__ {TYPE_2__ pkey; } ;
struct TYPE_6__ {int * pss; } ;
typedef TYPE_3__ EVP_PKEY ;
typedef int EVP_MD ;
 int CMS_RECIPINFO_TRANS ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_MD_type (int const*) ;
 int NID_rsaEncryption ;
 int NID_sha256 ;
 int OBJ_nid2obj (int ) ;
 int PKCS7_RECIP_INFO_get0_alg (void*,int **) ;
 int PKCS7_SIGNER_INFO_get0_algs (void*,int *,int *,int **) ;
 int RSAerr (int ,int ) ;
 int V_ASN1_NULL ;
 int X509_ALGOR_set0 (int *,int ,int ,int ) ;
 int pkey_is_pss (TYPE_3__*) ;
 int rsa_cms_decrypt (void*) ;
 int rsa_cms_encrypt (void*) ;
 int rsa_cms_sign (void*) ;
 int rsa_cms_verify (void*) ;
 int rsa_pss_get_param (int *,int const**,int const**,int*) ;

__attribute__((used)) static int rsa_pkey_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    X509_ALGOR *alg = ((void*)0);
    const EVP_MD *md;
    const EVP_MD *mgf1md;
    int min_saltlen;

    switch (op) {

    case 128:
        if (arg1 == 0)
            PKCS7_SIGNER_INFO_get0_algs(arg2, ((void*)0), ((void*)0), &alg);
        break;

    case 129:
        if (pkey_is_pss(pkey))
            return -2;
        if (arg1 == 0)
            PKCS7_RECIP_INFO_get0_alg(arg2, &alg);
        break;

    case 131:
        if (arg1 == 0)
            return rsa_cms_sign(arg2);
        else if (arg1 == 1)
            return rsa_cms_verify(arg2);
        break;

    case 133:
        if (pkey_is_pss(pkey))
            return -2;
        if (arg1 == 0)
            return rsa_cms_encrypt(arg2);
        else if (arg1 == 1)
            return rsa_cms_decrypt(arg2);
        break;

    case 132:
        if (pkey_is_pss(pkey))
            return -2;
        *(int *)arg2 = CMS_RECIPINFO_TRANS;
        return 1;


    case 130:
        if (pkey->pkey.rsa->pss != ((void*)0)) {
            if (!rsa_pss_get_param(pkey->pkey.rsa->pss, &md, &mgf1md,
                                   &min_saltlen)) {
                RSAerr(0, ERR_R_INTERNAL_ERROR);
                return 0;
            }
            *(int *)arg2 = EVP_MD_type(md);

            return 2;
        }
        *(int *)arg2 = NID_sha256;
        return 1;

    default:
        return -2;

    }

    if (alg)
        X509_ALGOR_set0(alg, OBJ_nid2obj(NID_rsaEncryption), V_ASN1_NULL, 0);

    return 1;

}
