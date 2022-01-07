
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rounds; int ks; } ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_key_length (int *) ;
 int EVP_F_R_32_12_16_INIT_KEY ;
 int EVP_R_BAD_KEY_LENGTH ;
 int EVPerr (int ,int ) ;
 int RC5_32_set_key (int *,int,unsigned char const*,int ) ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int r_32_12_16_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                               const unsigned char *iv, int enc)
{
    if (EVP_CIPHER_CTX_key_length(ctx) > 255) {
        EVPerr(EVP_F_R_32_12_16_INIT_KEY, EVP_R_BAD_KEY_LENGTH);
        return 0;
    }
    RC5_32_set_key(&data(ctx)->ks, EVP_CIPHER_CTX_key_length(ctx),
                   key, data(ctx)->rounds);
    return 1;
}
