
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int ASN1_ITEM ;
typedef int ASN1_BIT_STRING ;


 int ASN1_F_ASN1_ITEM_SIGN ;
 int ASN1_item_sign_ctx (int const*,int *,int *,int *,void*,int *) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;

int ASN1_item_sign(const ASN1_ITEM *it, X509_ALGOR *algor1,
                   X509_ALGOR *algor2, ASN1_BIT_STRING *signature, void *asn,
                   EVP_PKEY *pkey, const EVP_MD *type)
{
    int rv;
    EVP_MD_CTX *ctx = EVP_MD_CTX_new();

    if (ctx == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ITEM_SIGN, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!EVP_DigestSignInit(ctx, ((void*)0), type, ((void*)0), pkey)) {
        EVP_MD_CTX_free(ctx);
        return 0;
    }

    rv = ASN1_item_sign_ctx(it, algor1, algor2, signature, asn, ctx);

    EVP_MD_CTX_free(ctx);
    return rv;
}
