
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int ASN1_F_I2D_EC_PUBKEY ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_EC_KEY (int *,int *) ;
 int i2d_PUBKEY (int *,unsigned char**) ;

int i2d_EC_PUBKEY(EC_KEY *a, unsigned char **pp)
{
    EVP_PKEY *pktmp;
    int ret;
    if (!a)
        return 0;
    if ((pktmp = EVP_PKEY_new()) == ((void*)0)) {
        ASN1err(ASN1_F_I2D_EC_PUBKEY, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    EVP_PKEY_set1_EC_KEY(pktmp, a);
    ret = i2d_PUBKEY(pktmp, pp);
    EVP_PKEY_free(pktmp);
    return ret;
}
