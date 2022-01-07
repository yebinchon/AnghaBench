
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_INFO ;


 int ASN1_F_X509_INFO_NEW ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

X509_INFO *X509_INFO_new(void)
{
    X509_INFO *ret;

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_X509_INFO_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    return ret;
}
