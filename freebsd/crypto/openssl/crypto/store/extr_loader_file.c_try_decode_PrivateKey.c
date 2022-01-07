
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_4__ {int pkey_flags; int pkey_id; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef int OSSL_STORE_INFO ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef int EVP_PKEY ;


 int ASN1_PKEY_ALIAS ;
 int * EVP_PKCS82PKEY (int *) ;
 TYPE_1__* EVP_PKEY_asn1_find_str (int *,char const*,int) ;
 TYPE_1__* EVP_PKEY_asn1_get0 (int) ;
 int EVP_PKEY_asn1_get_count () ;
 int EVP_PKEY_free (int *) ;
 int * OSSL_STORE_INFO_new_PKEY (int *) ;
 int PEM_STRING_PKCS8INF ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int * d2i_PKCS8_PRIV_KEY_INFO (int *,unsigned char const**,size_t) ;
 int * d2i_PrivateKey (int ,int *,unsigned char const**,size_t) ;
 int pem_check_suffix (char const*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static OSSL_STORE_INFO *try_decode_PrivateKey(const char *pem_name,
                                              const char *pem_header,
                                              const unsigned char *blob,
                                              size_t len, void **pctx,
                                              int *matchcount,
                                              const UI_METHOD *ui_method,
                                              void *ui_data)
{
    OSSL_STORE_INFO *store_info = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    const EVP_PKEY_ASN1_METHOD *ameth = ((void*)0);

    if (pem_name != ((void*)0)) {
        if (strcmp(pem_name, PEM_STRING_PKCS8INF) == 0) {
            PKCS8_PRIV_KEY_INFO *p8inf =
                d2i_PKCS8_PRIV_KEY_INFO(((void*)0), &blob, len);

            *matchcount = 1;
            if (p8inf != ((void*)0))
                pkey = EVP_PKCS82PKEY(p8inf);
            PKCS8_PRIV_KEY_INFO_free(p8inf);
        } else {
            int slen;

            if ((slen = pem_check_suffix(pem_name, "PRIVATE KEY")) > 0
                && (ameth = EVP_PKEY_asn1_find_str(((void*)0), pem_name,
                                                   slen)) != ((void*)0)) {
                *matchcount = 1;
                pkey = d2i_PrivateKey(ameth->pkey_id, ((void*)0), &blob, len);
            }
        }
    } else {
        int i;

        for (i = 0; i < EVP_PKEY_asn1_get_count(); i++) {
            EVP_PKEY *tmp_pkey = ((void*)0);
            const unsigned char *tmp_blob = blob;

            ameth = EVP_PKEY_asn1_get0(i);
            if (ameth->pkey_flags & ASN1_PKEY_ALIAS)
                continue;

            tmp_pkey = d2i_PrivateKey(ameth->pkey_id, ((void*)0), &tmp_blob, len);
            if (tmp_pkey != ((void*)0)) {
                if (pkey != ((void*)0))
                    EVP_PKEY_free(tmp_pkey);
                else
                    pkey = tmp_pkey;
                (*matchcount)++;
            }
        }

        if (*matchcount > 1) {
            EVP_PKEY_free(pkey);
            pkey = ((void*)0);
        }
    }
    if (pkey == ((void*)0))

        return ((void*)0);

    store_info = OSSL_STORE_INFO_new_PKEY(pkey);
    if (store_info == ((void*)0))
        EVP_PKEY_free(pkey);

    return store_info;
}
