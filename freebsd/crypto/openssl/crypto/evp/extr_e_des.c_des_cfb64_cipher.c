
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_cfb64_encrypt (unsigned char const*,unsigned char*,long,int ,int *,int*,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 int EVP_CIPHER_CTX_get_cipher_data (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 int EVP_CIPHER_CTX_num (int *) ;
 int EVP_CIPHER_CTX_set_num (int *,int) ;
 size_t EVP_MAXCHUNK ;

__attribute__((used)) static int des_cfb64_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        int num = EVP_CIPHER_CTX_num(ctx);
        DES_cfb64_encrypt(in, out, (long)EVP_MAXCHUNK,
                          EVP_CIPHER_CTX_get_cipher_data(ctx),
                          (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx), &num,
                          EVP_CIPHER_CTX_encrypting(ctx));
        EVP_CIPHER_CTX_set_num(ctx, num);
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl) {
        int num = EVP_CIPHER_CTX_num(ctx);
        DES_cfb64_encrypt(in, out, (long)inl,
                          EVP_CIPHER_CTX_get_cipher_data(ctx),
                          (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx), &num,
                          EVP_CIPHER_CTX_encrypting(ctx));
        EVP_CIPHER_CTX_set_num(ctx, num);
    }
    return 1;
}
