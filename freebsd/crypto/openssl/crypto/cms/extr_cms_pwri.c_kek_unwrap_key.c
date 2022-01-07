
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int CMS_F_KEK_UNWRAP_KEY ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 size_t EVP_CIPHER_CTX_block_size (int *) ;
 int EVP_DecryptInit_ex (int *,int *,int *,int *,int *) ;
 int EVP_DecryptUpdate (int *,unsigned char*,int*,unsigned char const*,size_t) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int kek_unwrap_key(unsigned char *out, size_t *outlen,
                          const unsigned char *in, size_t inlen,
                          EVP_CIPHER_CTX *ctx)
{
    size_t blocklen = EVP_CIPHER_CTX_block_size(ctx);
    unsigned char *tmp;
    int outl, rv = 0;
    if (inlen < 2 * blocklen) {

        return 0;
    }
    if (inlen % blocklen) {

        return 0;
    }
    if ((tmp = OPENSSL_malloc(inlen)) == ((void*)0)) {
        CMSerr(CMS_F_KEK_UNWRAP_KEY, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!EVP_DecryptUpdate(ctx, tmp + inlen - 2 * blocklen, &outl,
                           in + inlen - 2 * blocklen, blocklen * 2)





        || !EVP_DecryptUpdate(ctx, tmp, &outl,
                              tmp + inlen - blocklen, blocklen)

        || !EVP_DecryptUpdate(ctx, tmp, &outl, in, inlen - blocklen)


        || !EVP_DecryptInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), ((void*)0))

        || !EVP_DecryptUpdate(ctx, tmp, &outl, tmp, inlen))
        goto err;

    if (((tmp[1] ^ tmp[4]) & (tmp[2] ^ tmp[5]) & (tmp[3] ^ tmp[6])) != 0xff) {

        goto err;
    }
    if (inlen < (size_t)(tmp[0] - 4)) {

        goto err;
    }
    *outlen = (size_t)tmp[0];
    memcpy(out, tmp + 4, *outlen);
    rv = 1;
 err:
    OPENSSL_clear_free(tmp, inlen);
    return rv;

}
