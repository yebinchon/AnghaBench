
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int BUF_reverse (unsigned char*,unsigned char*,int) ;
 int CRYPTO_memcmp (unsigned char*,unsigned char*,int) ;
 unsigned char* EVP_CIPHER_CTX_iv_noconst (int *) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int SHA1 (unsigned char*,size_t,unsigned char*) ;
 int SHA_DIGEST_LENGTH ;
 int des_ede_cbc_cipher (int *,unsigned char*,unsigned char const*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int wrap_iv ;

__attribute__((used)) static int des_ede3_unwrap(EVP_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    unsigned char icv[8], iv[8], sha1tmp[SHA_DIGEST_LENGTH];
    int rv = -1;
    if (inl < 24)
        return -1;
    if (out == ((void*)0))
        return inl - 16;
    memcpy(EVP_CIPHER_CTX_iv_noconst(ctx), wrap_iv, 8);

    des_ede_cbc_cipher(ctx, icv, in, 8);





    if (out == in) {
        memmove(out, out + 8, inl - 8);
        in -= 8;
    }
    des_ede_cbc_cipher(ctx, out, in + 8, inl - 16);

    des_ede_cbc_cipher(ctx, iv, in + inl - 8, 8);

    BUF_reverse(icv, ((void*)0), 8);
    BUF_reverse(out, ((void*)0), inl - 16);
    BUF_reverse(EVP_CIPHER_CTX_iv_noconst(ctx), iv, 8);

    des_ede_cbc_cipher(ctx, out, out, inl - 16);
    des_ede_cbc_cipher(ctx, icv, icv, 8);

    SHA1(out, inl - 16, sha1tmp);

    if (!CRYPTO_memcmp(sha1tmp, icv, 8))
        rv = inl - 16;
    OPENSSL_cleanse(icv, 8);
    OPENSSL_cleanse(sha1tmp, SHA_DIGEST_LENGTH);
    OPENSSL_cleanse(iv, 8);
    OPENSSL_cleanse(EVP_CIPHER_CTX_iv_noconst(ctx), 8);
    if (rv == -1)
        OPENSSL_cleanse(out, inl - 16);

    return rv;
}
