
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pctx; int ctx; } ;
typedef TYPE_1__ CMS_KeyAgreeRecipientInfo ;


 size_t EVP_CIPHER_CTX_key_length (int ) ;
 int EVP_CIPHER_CTX_reset (int ) ;
 int EVP_CipherInit_ex (int ,int *,int *,unsigned char*,int *,int) ;
 int EVP_CipherUpdate (int ,unsigned char*,int*,unsigned char const*,size_t) ;
 int EVP_MAX_KEY_LENGTH ;
 int EVP_PKEY_CTX_free (int *) ;
 scalar_t__ EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;

__attribute__((used)) static int cms_kek_cipher(unsigned char **pout, size_t *poutlen,
                          const unsigned char *in, size_t inlen,
                          CMS_KeyAgreeRecipientInfo *kari, int enc)
{

    unsigned char kek[EVP_MAX_KEY_LENGTH];
    size_t keklen;
    int rv = 0;
    unsigned char *out = ((void*)0);
    int outlen;
    keklen = EVP_CIPHER_CTX_key_length(kari->ctx);
    if (keklen > EVP_MAX_KEY_LENGTH)
        return 0;

    if (EVP_PKEY_derive(kari->pctx, kek, &keklen) <= 0)
        goto err;

    if (!EVP_CipherInit_ex(kari->ctx, ((void*)0), ((void*)0), kek, ((void*)0), enc))
        goto err;

    if (!EVP_CipherUpdate(kari->ctx, ((void*)0), &outlen, in, inlen))
        goto err;
    out = OPENSSL_malloc(outlen);
    if (out == ((void*)0))
        goto err;
    if (!EVP_CipherUpdate(kari->ctx, out, &outlen, in, inlen))
        goto err;
    *pout = out;
    *poutlen = (size_t)outlen;
    rv = 1;

 err:
    OPENSSL_cleanse(kek, keklen);
    if (!rv)
        OPENSSL_free(out);
    EVP_CIPHER_CTX_reset(kari->ctx);

    EVP_PKEY_CTX_free(kari->pctx);
    kari->pctx = ((void*)0);
    return rv;
}
