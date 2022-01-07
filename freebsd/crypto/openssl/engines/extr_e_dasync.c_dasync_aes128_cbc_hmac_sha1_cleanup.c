
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_aes_128_cbc_hmac_sha1 () ;
 int dasync_cipher_cleanup_helper (int *,int ) ;

__attribute__((used)) static int dasync_aes128_cbc_hmac_sha1_cleanup(EVP_CIPHER_CTX *ctx)
{




    return dasync_cipher_cleanup_helper(ctx, EVP_aes_128_cbc_hmac_sha1());
}
