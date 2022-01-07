
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;







 int EVP_PKEY_decrypt (int *,unsigned char*,size_t*,unsigned char const*,size_t) ;
 int EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 int EVP_PKEY_encrypt (int *,unsigned char*,size_t*,unsigned char const*,size_t) ;
 int EVP_PKEY_sign (int *,unsigned char*,size_t*,unsigned char const*,size_t) ;
 int EVP_PKEY_verify_recover (int *,unsigned char*,size_t*,unsigned char const*,size_t) ;

__attribute__((used)) static int do_keyop(EVP_PKEY_CTX *ctx, int pkey_op,
                    unsigned char *out, size_t *poutlen,
                    const unsigned char *in, size_t inlen)
{
    int rv = 0;
    switch (pkey_op) {
    case 128:
        rv = EVP_PKEY_verify_recover(ctx, out, poutlen, in, inlen);
        break;

    case 129:
        rv = EVP_PKEY_sign(ctx, out, poutlen, in, inlen);
        break;

    case 130:
        rv = EVP_PKEY_encrypt(ctx, out, poutlen, in, inlen);
        break;

    case 132:
        rv = EVP_PKEY_decrypt(ctx, out, poutlen, in, inlen);
        break;

    case 131:
        rv = EVP_PKEY_derive(ctx, out, poutlen);
        break;

    }
    return rv;
}
