
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int UI_METHOD ;
typedef int OSSL_STORE_INFO ;


 int * OSSL_STORE_INFO_new_CRL (int *) ;
 int PEM_STRING_X509_CRL ;
 int X509_CRL_free (int *) ;
 int * d2i_X509_CRL (int *,unsigned char const**,size_t) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static OSSL_STORE_INFO *try_decode_X509CRL(const char *pem_name,
                                           const char *pem_header,
                                           const unsigned char *blob,
                                           size_t len, void **pctx,
                                           int *matchcount,
                                           const UI_METHOD *ui_method,
                                           void *ui_data)
{
    OSSL_STORE_INFO *store_info = ((void*)0);
    X509_CRL *crl = ((void*)0);

    if (pem_name != ((void*)0)) {
        if (strcmp(pem_name, PEM_STRING_X509_CRL) != 0)

            return ((void*)0);
        *matchcount = 1;
    }

    if ((crl = d2i_X509_CRL(((void*)0), &blob, len)) != ((void*)0)) {
        *matchcount = 1;
        store_info = OSSL_STORE_INFO_new_CRL(crl);
    }

    if (store_info == ((void*)0))
        X509_CRL_free(crl);

    return store_info;
}
