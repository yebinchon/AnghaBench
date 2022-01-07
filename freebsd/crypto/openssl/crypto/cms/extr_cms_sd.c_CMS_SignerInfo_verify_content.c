
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int data; scalar_t__ length; } ;
struct TYPE_10__ {TYPE_1__* signature; int * pctx; int pkey; int digestAlgorithm; } ;
struct TYPE_9__ {int length; int data; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef TYPE_2__ CMS_SignerInfo ;
typedef int BIO ;
typedef TYPE_3__ ASN1_OCTET_STRING ;


 int CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT ;
 int CMS_R_ERROR_READING_MESSAGEDIGEST_ATTRIBUTE ;
 int CMS_R_MESSAGEDIGEST_ATTRIBUTE_WRONG_LENGTH ;
 int CMS_R_UNABLE_TO_FINALIZE_CONTEXT ;
 int CMS_R_VERIFICATION_FAILURE ;
 TYPE_3__* CMS_signed_get0_data_by_OBJ (TYPE_2__*,int ,int,int ) ;
 scalar_t__ CMS_signed_get_attr_count (TYPE_2__*) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_md (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_signature_md (int *,int const*) ;
 int EVP_PKEY_verify (int *,int ,int ,unsigned char*,unsigned int) ;
 scalar_t__ EVP_PKEY_verify_init (int *) ;
 int NID_pkcs9_messageDigest ;
 int OBJ_nid2obj (int ) ;
 int V_ASN1_OCTET_STRING ;
 int cms_DigestAlgorithm_find_ctx (int *,int *,int ) ;
 int cms_sd_asn1_ctrl (TYPE_2__*,int) ;
 scalar_t__ memcmp (unsigned char*,int ,unsigned int) ;

int CMS_SignerInfo_verify_content(CMS_SignerInfo *si, BIO *chain)
{
    ASN1_OCTET_STRING *os = ((void*)0);
    EVP_MD_CTX *mctx = EVP_MD_CTX_new();
    EVP_PKEY_CTX *pkctx = ((void*)0);
    int r = -1;
    unsigned char mval[EVP_MAX_MD_SIZE];
    unsigned int mlen;

    if (mctx == ((void*)0)) {
        CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (CMS_signed_get_attr_count(si) >= 0) {
        os = CMS_signed_get0_data_by_OBJ(si,
                                         OBJ_nid2obj(NID_pkcs9_messageDigest),
                                         -3, V_ASN1_OCTET_STRING);
        if (!os) {
            CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT,
                   CMS_R_ERROR_READING_MESSAGEDIGEST_ATTRIBUTE);
            goto err;
        }
    }

    if (!cms_DigestAlgorithm_find_ctx(mctx, chain, si->digestAlgorithm))
        goto err;

    if (EVP_DigestFinal_ex(mctx, mval, &mlen) <= 0) {
        CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT,
               CMS_R_UNABLE_TO_FINALIZE_CONTEXT);
        goto err;
    }



    if (os) {
        if (mlen != (unsigned int)os->length) {
            CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT,
                   CMS_R_MESSAGEDIGEST_ATTRIBUTE_WRONG_LENGTH);
            goto err;
        }

        if (memcmp(mval, os->data, mlen)) {
            CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT,
                   CMS_R_VERIFICATION_FAILURE);
            r = 0;
        } else
            r = 1;
    } else {
        const EVP_MD *md = EVP_MD_CTX_md(mctx);
        pkctx = EVP_PKEY_CTX_new(si->pkey, ((void*)0));
        if (pkctx == ((void*)0))
            goto err;
        if (EVP_PKEY_verify_init(pkctx) <= 0)
            goto err;
        if (EVP_PKEY_CTX_set_signature_md(pkctx, md) <= 0)
            goto err;
        si->pctx = pkctx;
        if (!cms_sd_asn1_ctrl(si, 1))
            goto err;
        r = EVP_PKEY_verify(pkctx, si->signature->data,
                            si->signature->length, mval, mlen);
        if (r <= 0) {
            CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT,
                   CMS_R_VERIFICATION_FAILURE);
            r = 0;
        }
    }

 err:
    EVP_PKEY_CTX_free(pkctx);
    EVP_MD_CTX_free(mctx);
    return r;

}
