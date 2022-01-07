
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ algorithm_enc; scalar_t__ algorithm_mac; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int ssl_version; int compress_meth; TYPE_3__* cipher; } ;
typedef TYPE_1__ SSL_SESSION ;
typedef TYPE_2__ SSL_COMP ;
typedef TYPE_3__ SSL_CIPHER ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_flags (int const*) ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 int * EVP_enc_null () ;
 int * EVP_get_cipherbyname (char*) ;
 int NID_undef ;
 scalar_t__ SSL_AEAD ;
 scalar_t__ SSL_AES128 ;
 scalar_t__ SSL_AES256 ;
 int SSL_ENC_NULL_IDX ;
 scalar_t__ SSL_MD5 ;
 scalar_t__ SSL_RC4 ;
 scalar_t__ SSL_SHA1 ;
 scalar_t__ SSL_SHA256 ;
 int TLS1_VERSION ;
 int TLS1_VERSION_MAJOR ;
 int load_builtin_compressions () ;
 int sk_SSL_COMP_find (int *,TYPE_2__*) ;
 TYPE_2__* sk_SSL_COMP_value (int *,int) ;
 int ssl_cipher_info_lookup (int ,scalar_t__) ;
 int ** ssl_cipher_methods ;
 int ssl_cipher_table_cipher ;
 int ssl_cipher_table_mac ;
 int * ssl_comp_methods ;
 int ** ssl_digest_methods ;
 int* ssl_mac_pkey_id ;
 size_t* ssl_mac_secret_size ;

int ssl_cipher_get_evp(const SSL_SESSION *s, const EVP_CIPHER **enc,
                       const EVP_MD **md, int *mac_pkey_type,
                       size_t *mac_secret_size, SSL_COMP **comp, int use_etm)
{
    int i;
    const SSL_CIPHER *c;

    c = s->cipher;
    if (c == ((void*)0))
        return 0;
    if (comp != ((void*)0)) {
        SSL_COMP ctmp;

        if (!load_builtin_compressions()) {




        }

        *comp = ((void*)0);
        ctmp.id = s->compress_meth;
        if (ssl_comp_methods != ((void*)0)) {
            i = sk_SSL_COMP_find(ssl_comp_methods, &ctmp);
            *comp = sk_SSL_COMP_value(ssl_comp_methods, i);
        }

        if ((enc == ((void*)0)) && (md == ((void*)0)))
            return 1;
    }

    if ((enc == ((void*)0)) || (md == ((void*)0)))
        return 0;

    i = ssl_cipher_info_lookup(ssl_cipher_table_cipher, c->algorithm_enc);

    if (i == -1) {
        *enc = ((void*)0);
    } else {
        if (i == SSL_ENC_NULL_IDX)
            *enc = EVP_enc_null();
        else
            *enc = ssl_cipher_methods[i];
    }

    i = ssl_cipher_info_lookup(ssl_cipher_table_mac, c->algorithm_mac);
    if (i == -1) {
        *md = ((void*)0);
        if (mac_pkey_type != ((void*)0))
            *mac_pkey_type = NID_undef;
        if (mac_secret_size != ((void*)0))
            *mac_secret_size = 0;
        if (c->algorithm_mac == SSL_AEAD)
            mac_pkey_type = ((void*)0);
    } else {
        *md = ssl_digest_methods[i];
        if (mac_pkey_type != ((void*)0))
            *mac_pkey_type = ssl_mac_pkey_id[i];
        if (mac_secret_size != ((void*)0))
            *mac_secret_size = ssl_mac_secret_size[i];
    }

    if ((*enc != ((void*)0)) &&
        (*md != ((void*)0) || (EVP_CIPHER_flags(*enc) & EVP_CIPH_FLAG_AEAD_CIPHER))
        && (!mac_pkey_type || *mac_pkey_type != NID_undef)) {
        const EVP_CIPHER *evp;

        if (use_etm)
            return 1;

        if (s->ssl_version >> 8 != TLS1_VERSION_MAJOR ||
            s->ssl_version < TLS1_VERSION)
            return 1;

        if (c->algorithm_enc == SSL_RC4 &&
            c->algorithm_mac == SSL_MD5 &&
            (evp = EVP_get_cipherbyname("RC4-HMAC-MD5")))
            *enc = evp, *md = ((void*)0);
        else if (c->algorithm_enc == SSL_AES128 &&
                 c->algorithm_mac == SSL_SHA1 &&
                 (evp = EVP_get_cipherbyname("AES-128-CBC-HMAC-SHA1")))
            *enc = evp, *md = ((void*)0);
        else if (c->algorithm_enc == SSL_AES256 &&
                 c->algorithm_mac == SSL_SHA1 &&
                 (evp = EVP_get_cipherbyname("AES-256-CBC-HMAC-SHA1")))
            *enc = evp, *md = ((void*)0);
        else if (c->algorithm_enc == SSL_AES128 &&
                 c->algorithm_mac == SSL_SHA256 &&
                 (evp = EVP_get_cipherbyname("AES-128-CBC-HMAC-SHA256")))
            *enc = evp, *md = ((void*)0);
        else if (c->algorithm_enc == SSL_AES256 &&
                 c->algorithm_mac == SSL_SHA256 &&
                 (evp = EVP_get_cipherbyname("AES-256-CBC-HMAC-SHA256")))
            *enc = evp, *md = ((void*)0);
        return 1;
    } else {
        return 0;
    }
}
