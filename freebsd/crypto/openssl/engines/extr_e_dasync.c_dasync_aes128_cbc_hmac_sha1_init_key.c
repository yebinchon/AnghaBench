
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_aes_128_cbc_hmac_sha1 () ;
 int dasync_cipher_init_key_helper (int *,unsigned char const*,unsigned char const*,int,int ) ;

__attribute__((used)) static int dasync_aes128_cbc_hmac_sha1_init_key(EVP_CIPHER_CTX *ctx,
                                                const unsigned char *key,
                                                const unsigned char *iv,
                                                int enc)
{




    return dasync_cipher_init_key_helper(ctx, key, iv, enc,
                                         EVP_aes_128_cbc_hmac_sha1());
}
