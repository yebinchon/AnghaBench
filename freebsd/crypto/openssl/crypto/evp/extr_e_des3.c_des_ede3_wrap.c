
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int BUF_reverse (unsigned char*,int *,size_t) ;
 unsigned char* EVP_CIPHER_CTX_iv_noconst (int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int SHA1 (unsigned char const*,size_t,unsigned char*) ;
 int SHA_DIGEST_LENGTH ;
 int des_ede_cbc_cipher (int *,unsigned char*,unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char const*,size_t) ;
 unsigned char* wrap_iv ;

__attribute__((used)) static int des_ede3_wrap(EVP_CIPHER_CTX *ctx, unsigned char *out,
                         const unsigned char *in, size_t inl)
{
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];
    if (out == ((void*)0))
        return inl + 16;

    memmove(out + 8, in, inl);

    SHA1(in, inl, sha1tmp);
    memcpy(out + inl + 8, sha1tmp, 8);
    OPENSSL_cleanse(sha1tmp, SHA_DIGEST_LENGTH);

    if (RAND_bytes(EVP_CIPHER_CTX_iv_noconst(ctx), 8) <= 0)
        return -1;
    memcpy(out, EVP_CIPHER_CTX_iv_noconst(ctx), 8);

    des_ede_cbc_cipher(ctx, out + 8, out + 8, inl + 8);
    BUF_reverse(out, ((void*)0), inl + 16);
    memcpy(EVP_CIPHER_CTX_iv_noconst(ctx), wrap_iv, 8);
    des_ede_cbc_cipher(ctx, out, out, inl + 16);
    return inl + 16;
}
