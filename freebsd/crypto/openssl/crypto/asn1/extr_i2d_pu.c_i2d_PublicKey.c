
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int ASN1_F_I2D_PUBLICKEY ;
 int ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE ;
 int ASN1err (int ,int ) ;



 int EVP_PKEY_get0_DSA (int *) ;
 int EVP_PKEY_get0_EC_KEY (int *) ;
 int EVP_PKEY_get0_RSA (int *) ;
 int EVP_PKEY_id (int *) ;
 int i2d_DSAPublicKey (int ,unsigned char**) ;
 int i2d_RSAPublicKey (int ,unsigned char**) ;
 int i2o_ECPublicKey (int ,unsigned char**) ;

int i2d_PublicKey(EVP_PKEY *a, unsigned char **pp)
{
    switch (EVP_PKEY_id(a)) {

    case 128:
        return i2d_RSAPublicKey(EVP_PKEY_get0_RSA(a), pp);


    case 130:
        return i2d_DSAPublicKey(EVP_PKEY_get0_DSA(a), pp);


    case 129:
        return i2o_ECPublicKey(EVP_PKEY_get0_EC_KEY(a), pp);

    default:
        ASN1err(ASN1_F_I2D_PUBLICKEY, ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE);
        return -1;
    }
}
