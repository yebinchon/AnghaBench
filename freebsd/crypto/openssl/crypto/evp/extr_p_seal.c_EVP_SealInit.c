
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 scalar_t__ EVP_CIPHER_CTX_iv_length (int *) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 scalar_t__ EVP_CIPHER_CTX_rand_key (int *,unsigned char*) ;
 int EVP_CIPHER_CTX_reset (int *) ;
 int EVP_EncryptInit_ex (int *,int const*,int *,unsigned char*,unsigned char*) ;
 int EVP_MAX_KEY_LENGTH ;
 int EVP_PKEY_encrypt_old (unsigned char*,unsigned char*,int ,int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 scalar_t__ RAND_bytes (unsigned char*,scalar_t__) ;

int EVP_SealInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                 unsigned char **ek, int *ekl, unsigned char *iv,
                 EVP_PKEY **pubk, int npubk)
{
    unsigned char key[EVP_MAX_KEY_LENGTH];
    int i;
    int rv = 0;

    if (type) {
        EVP_CIPHER_CTX_reset(ctx);
        if (!EVP_EncryptInit_ex(ctx, type, ((void*)0), ((void*)0), ((void*)0)))
            return 0;
    }
    if ((npubk <= 0) || !pubk)
        return 1;
    if (EVP_CIPHER_CTX_rand_key(ctx, key) <= 0)
        return 0;

    if (EVP_CIPHER_CTX_iv_length(ctx)
            && RAND_bytes(iv, EVP_CIPHER_CTX_iv_length(ctx)) <= 0)
        goto err;

    if (!EVP_EncryptInit_ex(ctx, ((void*)0), ((void*)0), key, iv))
        goto err;

    for (i = 0; i < npubk; i++) {
        ekl[i] =
            EVP_PKEY_encrypt_old(ek[i], key, EVP_CIPHER_CTX_key_length(ctx),
                                 pubk[i]);
        if (ekl[i] <= 0) {
            rv = -1;
            goto err;
        }
    }
    rv = npubk;
err:
    OPENSSL_cleanse(key, sizeof(key));
    return rv;
}
