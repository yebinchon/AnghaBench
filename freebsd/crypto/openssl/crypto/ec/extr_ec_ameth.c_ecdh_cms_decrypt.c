
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_PKEY_CTX ;
typedef int CMS_RecipientInfo ;
typedef int ASN1_BIT_STRING ;


 int * CMS_RecipientInfo_get0_pkey_ctx (int *) ;
 int CMS_RecipientInfo_kari_get0_orig_id (int *,int **,int **,int *,int *,int *) ;
 int EC_F_ECDH_CMS_DECRYPT ;
 int EC_R_PEER_KEY_ERROR ;
 int EC_R_SHARED_INFO_ERROR ;
 int ECerr (int ,int ) ;
 int EVP_PKEY_CTX_get0_peerkey (int *) ;
 int ecdh_cms_set_peerkey (int *,int *,int *) ;
 int ecdh_cms_set_shared_info (int *,int *) ;

__attribute__((used)) static int ecdh_cms_decrypt(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pctx;
    pctx = CMS_RecipientInfo_get0_pkey_ctx(ri);
    if (!pctx)
        return 0;

    if (!EVP_PKEY_CTX_get0_peerkey(pctx)) {
        X509_ALGOR *alg;
        ASN1_BIT_STRING *pubkey;
        if (!CMS_RecipientInfo_kari_get0_orig_id(ri, &alg, &pubkey,
                                                 ((void*)0), ((void*)0), ((void*)0)))
            return 0;
        if (!alg || !pubkey)
            return 0;
        if (!ecdh_cms_set_peerkey(pctx, alg, pubkey)) {
            ECerr(EC_F_ECDH_CMS_DECRYPT, EC_R_PEER_KEY_ERROR);
            return 0;
        }
    }

    if (!ecdh_cms_set_shared_info(pctx, ri)) {
        ECerr(EC_F_ECDH_CMS_DECRYPT, EC_R_SHARED_INFO_ERROR);
        return 0;
    }
    return 1;
}
