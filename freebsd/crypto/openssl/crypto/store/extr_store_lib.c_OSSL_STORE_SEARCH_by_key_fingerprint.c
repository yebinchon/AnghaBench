
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf2 ;
typedef int buf1 ;
struct TYPE_4__ {unsigned char const* string; size_t stringlength; int const* digest; int search_type; } ;
typedef TYPE_1__ OSSL_STORE_SEARCH ;
typedef int EVP_MD ;


 int BIO_snprintf (char*,int,char*,size_t) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,int ,char*,char*,char*,char*) ;
 int EVP_MD_name (int const*) ;
 size_t EVP_MD_size (int const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT ;
 int OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST ;
 int OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT ;
 int OSSL_STOREerr (int ,int ) ;

OSSL_STORE_SEARCH *OSSL_STORE_SEARCH_by_key_fingerprint(const EVP_MD *digest,
                                                        const unsigned char
                                                        *bytes, size_t len)
{
    OSSL_STORE_SEARCH *search = OPENSSL_zalloc(sizeof(*search));

    if (search == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (digest != ((void*)0) && len != (size_t)EVP_MD_size(digest)) {
        char buf1[20], buf2[20];

        BIO_snprintf(buf1, sizeof(buf1), "%d", EVP_MD_size(digest));
        BIO_snprintf(buf2, sizeof(buf2), "%zu", len);
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT,
                      OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST);
        ERR_add_error_data(5, EVP_MD_name(digest), " size is ", buf1,
                           ", fingerprint size is ", buf2);
    }

    search->search_type = OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT;
    search->digest = digest;
    search->string = bytes;
    search->stringlength = len;
    return search;
}
