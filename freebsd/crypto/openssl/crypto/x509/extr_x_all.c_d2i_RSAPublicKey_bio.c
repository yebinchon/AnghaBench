
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BIO ;


 int ASN1_ITEM_rptr (int ) ;
 int * ASN1_item_d2i_bio (int ,int *,int **) ;
 int RSAPublicKey ;

RSA *d2i_RSAPublicKey_bio(BIO *bp, RSA **rsa)
{
    return ASN1_item_d2i_bio(ASN1_ITEM_rptr(RSAPublicKey), bp, rsa);
}
