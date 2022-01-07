
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int FILE ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_i2d_fp (int ,int *,int *) ;
 int RSAPrivateKey ;

int i2d_RSAPrivateKey_fp(FILE *fp, RSA *rsa)
{
    return ASN1_item_i2d_fp(ASN1_ITEM_rptr(RSAPrivateKey), fp, rsa);
}
