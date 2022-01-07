
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int algorithm; } ;
typedef TYPE_5__ X509_ALGOR ;
struct TYPE_16__ {TYPE_2__* envelopedData; } ;
struct TYPE_22__ {TYPE_3__ d; } ;
struct TYPE_21__ {unsigned char* key; size_t keylen; TYPE_5__* contentEncryptionAlgorithm; int debug; scalar_t__ havenocert; } ;
struct TYPE_20__ {int * pctx; TYPE_4__* encryptedKey; int * pkey; } ;
struct TYPE_14__ {TYPE_7__* ktri; } ;
struct TYPE_19__ {TYPE_1__ d; } ;
struct TYPE_17__ {int length; int data; } ;
struct TYPE_15__ {TYPE_8__* encryptedContentInfo; } ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef TYPE_6__ CMS_RecipientInfo ;
typedef TYPE_7__ CMS_KeyTransRecipientInfo ;
typedef TYPE_8__ CMS_EncryptedContentInfo ;
typedef TYPE_9__ CMS_ContentInfo ;


 int CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT ;
 int CMS_R_CMS_LIB ;
 int CMS_R_CTRL_ERROR ;
 int CMS_R_NO_PRIVATE_KEY ;
 int CMS_R_UNKNOWN_CIPHER ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 size_t EVP_CIPHER_key_length (int const*) ;
 int EVP_PKEY_CTRL_CMS_DECRYPT ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int ,int ,int ,TYPE_6__*) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_OP_DECRYPT ;
 scalar_t__ EVP_PKEY_decrypt (int *,unsigned char*,size_t*,int ,int ) ;
 scalar_t__ EVP_PKEY_decrypt_init (int *) ;
 int * EVP_get_cipherbyobj (int ) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int cms_env_asn1_ctrl (TYPE_6__*,int) ;

__attribute__((used)) static int cms_RecipientInfo_ktri_decrypt(CMS_ContentInfo *cms,
                                          CMS_RecipientInfo *ri)
{
    CMS_KeyTransRecipientInfo *ktri = ri->d.ktri;
    EVP_PKEY *pkey = ktri->pkey;
    unsigned char *ek = ((void*)0);
    size_t eklen;
    int ret = 0;
    size_t fixlen = 0;
    CMS_EncryptedContentInfo *ec;
    ec = cms->d.envelopedData->encryptedContentInfo;

    if (ktri->pkey == ((void*)0)) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, CMS_R_NO_PRIVATE_KEY);
        return 0;
    }

    if (cms->d.envelopedData->encryptedContentInfo->havenocert
            && !cms->d.envelopedData->encryptedContentInfo->debug) {
        X509_ALGOR *calg = ec->contentEncryptionAlgorithm;
        const EVP_CIPHER *ciph = EVP_get_cipherbyobj(calg->algorithm);

        if (ciph == ((void*)0)) {
            CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, CMS_R_UNKNOWN_CIPHER);
            return 0;
        }

        fixlen = EVP_CIPHER_key_length(ciph);
    }

    ktri->pctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
    if (ktri->pctx == ((void*)0))
        return 0;

    if (EVP_PKEY_decrypt_init(ktri->pctx) <= 0)
        goto err;

    if (!cms_env_asn1_ctrl(ri, 1))
        goto err;

    if (EVP_PKEY_CTX_ctrl(ktri->pctx, -1, EVP_PKEY_OP_DECRYPT,
                          EVP_PKEY_CTRL_CMS_DECRYPT, 0, ri) <= 0) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, CMS_R_CTRL_ERROR);
        goto err;
    }

    if (EVP_PKEY_decrypt(ktri->pctx, ((void*)0), &eklen,
                         ktri->encryptedKey->data,
                         ktri->encryptedKey->length) <= 0)
        goto err;

    ek = OPENSSL_malloc(eklen);

    if (ek == ((void*)0)) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_PKEY_decrypt(ktri->pctx, ek, &eklen,
                         ktri->encryptedKey->data,
                         ktri->encryptedKey->length) <= 0
            || eklen == 0
            || (fixlen != 0 && eklen != fixlen)) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT, CMS_R_CMS_LIB);
        goto err;
    }

    ret = 1;

    OPENSSL_clear_free(ec->key, ec->keylen);
    ec->key = ek;
    ec->keylen = eklen;

 err:
    EVP_PKEY_CTX_free(ktri->pctx);
    ktri->pctx = ((void*)0);
    if (!ret)
        OPENSSL_free(ek);

    return ret;
}
