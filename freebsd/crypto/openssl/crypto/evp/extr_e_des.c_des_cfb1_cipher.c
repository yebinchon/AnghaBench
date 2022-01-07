
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_cfb_encrypt (unsigned char*,unsigned char*,int,int,int ,int *,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 int EVP_CIPHER_CTX_get_cipher_data (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 int EVP_MAXCHUNK ;

__attribute__((used)) static int des_cfb1_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    size_t n, chunk = EVP_MAXCHUNK / 8;
    unsigned char c[1], d[1];

    if (inl < chunk)
        chunk = inl;

    while (inl && inl >= chunk) {
        for (n = 0; n < chunk * 8; ++n) {
            c[0] = (in[n / 8] & (1 << (7 - n % 8))) ? 0x80 : 0;
            DES_cfb_encrypt(c, d, 1, 1, EVP_CIPHER_CTX_get_cipher_data(ctx),
                            (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                            EVP_CIPHER_CTX_encrypting(ctx));
            out[n / 8] =
                (out[n / 8] & ~(0x80 >> (unsigned int)(n % 8))) |
                ((d[0] & 0x80) >> (unsigned int)(n % 8));
        }
        inl -= chunk;
        in += chunk;
        out += chunk;
        if (inl < chunk)
            chunk = inl;
    }

    return 1;
}
