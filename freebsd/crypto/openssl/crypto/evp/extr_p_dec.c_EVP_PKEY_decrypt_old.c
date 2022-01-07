
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int EVP_F_EVP_PKEY_DECRYPT_OLD ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_PKEY_get0_RSA (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int EVP_R_PUBLIC_KEY_NOT_RSA ;
 int EVPerr (int ,int ) ;
 int RSA_PKCS1_PADDING ;
 int RSA_private_decrypt (int,unsigned char const*,unsigned char*,int ,int ) ;

int EVP_PKEY_decrypt_old(unsigned char *key, const unsigned char *ek, int ekl,
                         EVP_PKEY *priv)
{
    int ret = -1;


    if (EVP_PKEY_id(priv) != EVP_PKEY_RSA) {

        EVPerr(EVP_F_EVP_PKEY_DECRYPT_OLD, EVP_R_PUBLIC_KEY_NOT_RSA);

        goto err;
    }

    ret =
        RSA_private_decrypt(ekl, ek, key, EVP_PKEY_get0_RSA(priv),
                            RSA_PKCS1_PADDING);
 err:

    return ret;
}
