
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md_buf ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_iv_length (int const*) ;
 int EVP_CIPHER_key_length (int const*) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,unsigned int) ;
 int EVP_MAX_IV_LENGTH ;
 int EVP_MAX_KEY_LENGTH ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int OPENSSL_assert (int) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 unsigned int PKCS5_SALT_LEN ;

int EVP_BytesToKey(const EVP_CIPHER *type, const EVP_MD *md,
                   const unsigned char *salt, const unsigned char *data,
                   int datal, int count, unsigned char *key,
                   unsigned char *iv)
{
    EVP_MD_CTX *c;
    unsigned char md_buf[EVP_MAX_MD_SIZE];
    int niv, nkey, addmd = 0;
    unsigned int mds = 0, i;
    int rv = 0;
    nkey = EVP_CIPHER_key_length(type);
    niv = EVP_CIPHER_iv_length(type);
    OPENSSL_assert(nkey <= EVP_MAX_KEY_LENGTH);
    OPENSSL_assert(niv <= EVP_MAX_IV_LENGTH);

    if (data == ((void*)0))
        return nkey;

    c = EVP_MD_CTX_new();
    if (c == ((void*)0))
        goto err;
    for (;;) {
        if (!EVP_DigestInit_ex(c, md, ((void*)0)))
            goto err;
        if (addmd++)
            if (!EVP_DigestUpdate(c, &(md_buf[0]), mds))
                goto err;
        if (!EVP_DigestUpdate(c, data, datal))
            goto err;
        if (salt != ((void*)0))
            if (!EVP_DigestUpdate(c, salt, PKCS5_SALT_LEN))
                goto err;
        if (!EVP_DigestFinal_ex(c, &(md_buf[0]), &mds))
            goto err;

        for (i = 1; i < (unsigned int)count; i++) {
            if (!EVP_DigestInit_ex(c, md, ((void*)0)))
                goto err;
            if (!EVP_DigestUpdate(c, &(md_buf[0]), mds))
                goto err;
            if (!EVP_DigestFinal_ex(c, &(md_buf[0]), &mds))
                goto err;
        }
        i = 0;
        if (nkey) {
            for (;;) {
                if (nkey == 0)
                    break;
                if (i == mds)
                    break;
                if (key != ((void*)0))
                    *(key++) = md_buf[i];
                nkey--;
                i++;
            }
        }
        if (niv && (i != mds)) {
            for (;;) {
                if (niv == 0)
                    break;
                if (i == mds)
                    break;
                if (iv != ((void*)0))
                    *(iv++) = md_buf[i];
                niv--;
                i++;
            }
        }
        if ((nkey == 0) && (niv == 0))
            break;
    }
    rv = EVP_CIPHER_key_length(type);
 err:
    EVP_MD_CTX_free(c);
    OPENSSL_cleanse(md_buf, sizeof(md_buf));
    return rv;
}
