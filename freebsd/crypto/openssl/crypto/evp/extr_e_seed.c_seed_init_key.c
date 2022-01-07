
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ks; } ;
typedef int EVP_CIPHER_CTX ;


 TYPE_1__* EVP_C_DATA (int ,int *) ;
 int EVP_SEED_KEY ;
 int SEED_set_key (unsigned char const*,int *) ;

__attribute__((used)) static int seed_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                         const unsigned char *iv, int enc)
{
    SEED_set_key(key, &EVP_C_DATA(EVP_SEED_KEY,ctx)->ks);
    return 1;
}
