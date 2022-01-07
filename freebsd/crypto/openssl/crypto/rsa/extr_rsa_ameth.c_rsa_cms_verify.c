
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_PKEY_CTX ;
typedef int CMS_SignerInfo ;


 int CMS_SignerInfo_get0_algs (int *,int *,int *,int *,TYPE_1__**) ;
 int * CMS_SignerInfo_get0_pkey_ctx (int *) ;
 int EVP_PKEY_RSA_PSS ;
 int NID_rsaEncryption ;
 scalar_t__ OBJ_find_sigid_algs (int,int *,int*) ;
 int OBJ_obj2nid (int ) ;
 int RSA_F_RSA_CMS_VERIFY ;
 int RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE ;
 int RSAerr (int ,int ) ;
 scalar_t__ pkey_ctx_is_pss (int *) ;
 int rsa_pss_to_ctx (int *,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int rsa_cms_verify(CMS_SignerInfo *si)
{
    int nid, nid2;
    X509_ALGOR *alg;
    EVP_PKEY_CTX *pkctx = CMS_SignerInfo_get0_pkey_ctx(si);

    CMS_SignerInfo_get0_algs(si, ((void*)0), ((void*)0), ((void*)0), &alg);
    nid = OBJ_obj2nid(alg->algorithm);
    if (nid == EVP_PKEY_RSA_PSS)
        return rsa_pss_to_ctx(((void*)0), pkctx, alg, ((void*)0));

    if (pkey_ctx_is_pss(pkctx)) {
        RSAerr(RSA_F_RSA_CMS_VERIFY, RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE);
        return 0;
    }
    if (nid == NID_rsaEncryption)
        return 1;

    if (OBJ_find_sigid_algs(nid, ((void*)0), &nid2)) {
        if (nid2 == NID_rsaEncryption)
            return 1;
    }
    return 0;
}
