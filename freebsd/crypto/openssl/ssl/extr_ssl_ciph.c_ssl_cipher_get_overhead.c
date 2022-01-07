
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int algorithm_enc; int algorithm_mac; } ;
typedef TYPE_1__ SSL_CIPHER ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int EVP_CCM_TLS_EXPLICIT_IV_LEN ;
 size_t EVP_CIPHER_block_size (int const*) ;
 size_t EVP_CIPHER_iv_length (int const*) ;
 scalar_t__ EVP_CIPHER_mode (int const*) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 size_t EVP_GCM_TLS_EXPLICIT_IV_LEN ;
 size_t EVP_GCM_TLS_TAG_LEN ;
 size_t EVP_MD_size (int const*) ;
 int * EVP_get_cipherbynid (int) ;
 int * EVP_get_digestbynid (int) ;
 int SSL_AEAD ;
 int SSL_AES128CCM ;
 int SSL_AES128CCM8 ;
 int SSL_AES256CCM ;
 int SSL_AES256CCM8 ;
 int SSL_AESGCM ;
 int SSL_ARIAGCM ;
 int SSL_CHACHA20POLY1305 ;
 int SSL_CIPHER_get_cipher_nid (TYPE_1__ const*) ;
 int SSL_CIPHER_get_digest_nid (TYPE_1__ const*) ;
 int SSL_eNULL ;

int ssl_cipher_get_overhead(const SSL_CIPHER *c, size_t *mac_overhead,
                            size_t *int_overhead, size_t *blocksize,
                            size_t *ext_overhead)
{
    size_t mac = 0, in = 0, blk = 0, out = 0;



    if (c->algorithm_enc & (SSL_AESGCM | SSL_ARIAGCM)) {
        out = EVP_GCM_TLS_EXPLICIT_IV_LEN + EVP_GCM_TLS_TAG_LEN;
    } else if (c->algorithm_enc & (SSL_AES128CCM | SSL_AES256CCM)) {
        out = EVP_CCM_TLS_EXPLICIT_IV_LEN + 16;
    } else if (c->algorithm_enc & (SSL_AES128CCM8 | SSL_AES256CCM8)) {
        out = EVP_CCM_TLS_EXPLICIT_IV_LEN + 8;
    } else if (c->algorithm_enc & SSL_CHACHA20POLY1305) {
        out = 16;
    } else if (c->algorithm_mac & SSL_AEAD) {

        return 0;
    } else {

        int digest_nid = SSL_CIPHER_get_digest_nid(c);
        const EVP_MD *e_md = EVP_get_digestbynid(digest_nid);

        if (e_md == ((void*)0))
            return 0;

        mac = EVP_MD_size(e_md);
        if (c->algorithm_enc != SSL_eNULL) {
            int cipher_nid = SSL_CIPHER_get_cipher_nid(c);
            const EVP_CIPHER *e_ciph = EVP_get_cipherbynid(cipher_nid);



            if (e_ciph == ((void*)0) ||
                EVP_CIPHER_mode(e_ciph) != EVP_CIPH_CBC_MODE)
                return 0;

            in = 1;
            out = EVP_CIPHER_iv_length(e_ciph);
            blk = EVP_CIPHER_block_size(e_ciph);
        }
    }

    *mac_overhead = mac;
    *int_overhead = in;
    *blocksize = blk;
    *ext_overhead = out;

    return 1;
}
