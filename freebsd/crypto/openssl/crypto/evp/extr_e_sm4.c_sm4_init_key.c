
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int SM4_set_key (unsigned char const*,int ) ;

__attribute__((used)) static int sm4_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                        const unsigned char *iv, int enc)
{
    SM4_set_key(key, EVP_CIPHER_CTX_get_cipher_data(ctx));
    return 1;
}
