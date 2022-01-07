
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_get_cipher_data (int *) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 int EVP_CIPHER_CTX_mode (int *) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_ECB_MODE ;
 int EVP_F_ARIA_INIT_KEY ;
 int EVP_R_ARIA_KEY_SETUP_FAILED ;
 int EVPerr (int ,int ) ;
 int aria_set_decrypt_key (unsigned char const*,int,int ) ;
 int aria_set_encrypt_key (unsigned char const*,int,int ) ;

__attribute__((used)) static int aria_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                            const unsigned char *iv, int enc)
{
    int ret;
    int mode = EVP_CIPHER_CTX_mode(ctx);

    if (enc || (mode != EVP_CIPH_ECB_MODE && mode != EVP_CIPH_CBC_MODE))
        ret = aria_set_encrypt_key(key, EVP_CIPHER_CTX_key_length(ctx) * 8,
                                        EVP_CIPHER_CTX_get_cipher_data(ctx));
    else
        ret = aria_set_decrypt_key(key, EVP_CIPHER_CTX_key_length(ctx) * 8,
                                        EVP_CIPHER_CTX_get_cipher_data(ctx));
    if (ret < 0) {
        EVPerr(EVP_F_ARIA_INIT_KEY,EVP_R_ARIA_KEY_SETUP_FAILED);
        return 0;
    }
    return 1;
}
