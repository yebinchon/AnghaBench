
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* enc_key; } ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_2__ PKCS7_RECIP_INFO ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ERR_R_EVP_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_CTRL_PKCS7_DECRYPT ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int ,int ,int ,TYPE_2__*) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_OP_DECRYPT ;
 scalar_t__ EVP_PKEY_decrypt (int *,unsigned char*,size_t*,int ,int ) ;
 scalar_t__ EVP_PKEY_decrypt_init (int *) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int PKCS7_F_PKCS7_DECRYPT_RINFO ;
 int PKCS7_R_CTRL_ERROR ;
 int PKCS7err (int ,int ) ;

__attribute__((used)) static int pkcs7_decrypt_rinfo(unsigned char **pek, int *peklen,
                               PKCS7_RECIP_INFO *ri, EVP_PKEY *pkey,
                               size_t fixlen)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    unsigned char *ek = ((void*)0);
    size_t eklen;

    int ret = -1;

    pctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
    if (!pctx)
        return -1;

    if (EVP_PKEY_decrypt_init(pctx) <= 0)
        goto err;

    if (EVP_PKEY_CTX_ctrl(pctx, -1, EVP_PKEY_OP_DECRYPT,
                          EVP_PKEY_CTRL_PKCS7_DECRYPT, 0, ri) <= 0) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT_RINFO, PKCS7_R_CTRL_ERROR);
        goto err;
    }

    if (EVP_PKEY_decrypt(pctx, ((void*)0), &eklen,
                         ri->enc_key->data, ri->enc_key->length) <= 0)
        goto err;

    ek = OPENSSL_malloc(eklen);

    if (ek == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT_RINFO, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_PKEY_decrypt(pctx, ek, &eklen,
                         ri->enc_key->data, ri->enc_key->length) <= 0
            || eklen == 0
            || (fixlen != 0 && eklen != fixlen)) {
        ret = 0;
        PKCS7err(PKCS7_F_PKCS7_DECRYPT_RINFO, ERR_R_EVP_LIB);
        goto err;
    }

    ret = 1;

    OPENSSL_clear_free(*pek, *peklen);
    *pek = ek;
    *peklen = eklen;

 err:
    EVP_PKEY_CTX_free(pctx);
    if (!ret)
        OPENSSL_free(ek);

    return ret;
}
