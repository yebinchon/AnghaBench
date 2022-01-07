
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t keylen; int contentType; int * key; int const* cipher; } ;
typedef int EVP_CIPHER ;
typedef TYPE_1__ CMS_EncryptedContentInfo ;


 int CMS_F_CMS_ENCRYPTEDCONTENT_INIT ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_pkcs7_data ;
 int OBJ_nid2obj (int ) ;
 int * OPENSSL_malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;

int cms_EncryptedContent_init(CMS_EncryptedContentInfo *ec,
                              const EVP_CIPHER *cipher,
                              const unsigned char *key, size_t keylen)
{
    ec->cipher = cipher;
    if (key) {
        if ((ec->key = OPENSSL_malloc(keylen)) == ((void*)0)) {
            CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        memcpy(ec->key, key, keylen);
    }
    ec->keylen = keylen;
    if (cipher)
        ec->contentType = OBJ_nid2obj(NID_pkcs7_data);
    return 1;
}
