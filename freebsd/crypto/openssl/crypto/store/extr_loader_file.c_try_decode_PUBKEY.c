
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_METHOD ;
typedef int OSSL_STORE_INFO ;
typedef int EVP_PKEY ;


 int * OSSL_STORE_INFO_new_PKEY (int *) ;
 int PEM_STRING_PUBLIC ;
 int * d2i_PUBKEY (int *,unsigned char const**,size_t) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static OSSL_STORE_INFO *try_decode_PUBKEY(const char *pem_name,
                                          const char *pem_header,
                                          const unsigned char *blob,
                                          size_t len, void **pctx,
                                          int *matchcount,
                                          const UI_METHOD *ui_method,
                                          void *ui_data)
{
    OSSL_STORE_INFO *store_info = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);

    if (pem_name != ((void*)0)) {
        if (strcmp(pem_name, PEM_STRING_PUBLIC) != 0)

            return ((void*)0);
        *matchcount = 1;
    }

    if ((pkey = d2i_PUBKEY(((void*)0), &blob, len)) != ((void*)0)) {
        *matchcount = 1;
        store_info = OSSL_STORE_INFO_new_PKEY(pkey);
    }

    return store_info;
}
