
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {size_t master_key_length; unsigned char* master_key; TYPE_4__* cipher; } ;
struct TYPE_12__ {int use_etm; } ;
struct TYPE_17__ {int options; TYPE_5__* s3; TYPE_9__* session; TYPE_3__* method; TYPE_1__ ext; } ;
struct TYPE_13__ {size_t key_block_length; int new_mac_pkey_type; size_t new_mac_secret_size; unsigned char* key_block; int const* new_hash; int const* new_sym_enc; } ;
struct TYPE_16__ {unsigned char* client_random; unsigned char* server_random; int need_empty_fragments; TYPE_2__ tmp; } ;
struct TYPE_15__ {scalar_t__ algorithm_enc; } ;
struct TYPE_14__ {scalar_t__ version; } ;
typedef int SSL_COMP ;
typedef TYPE_6__ SSL ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int ERR_R_MALLOC_FAILURE ;
 size_t EVP_CIPHER_iv_length (int const*) ;
 size_t EVP_CIPHER_key_length (int const*) ;
 int NID_undef ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int SSL3_RANDOM_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS1_SETUP_KEY_BLOCK ;
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ;
 scalar_t__ SSL_RC4 ;
 int SSL_R_CIPHER_OR_HASH_UNAVAILABLE ;
 scalar_t__ SSL_eNULL ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 scalar_t__ TLS1_VERSION ;
 int printf (char*,...) ;
 int ssl3_cleanup_key_block (TYPE_6__*) ;
 int ssl_cipher_get_evp (TYPE_9__*,int const**,int const**,int*,size_t*,int **,int ) ;
 int tls1_generate_key_block (TYPE_6__*,unsigned char*,size_t) ;

int tls1_setup_key_block(SSL *s)
{
    unsigned char *p;
    const EVP_CIPHER *c;
    const EVP_MD *hash;
    SSL_COMP *comp;
    int mac_type = NID_undef;
    size_t num, mac_secret_size = 0;
    int ret = 0;

    if (s->s3->tmp.key_block_length != 0)
        return 1;

    if (!ssl_cipher_get_evp(s->session, &c, &hash, &mac_type, &mac_secret_size,
                            &comp, s->ext.use_etm)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_SETUP_KEY_BLOCK,
                 SSL_R_CIPHER_OR_HASH_UNAVAILABLE);
        return 0;
    }

    s->s3->tmp.new_sym_enc = c;
    s->s3->tmp.new_hash = hash;
    s->s3->tmp.new_mac_pkey_type = mac_type;
    s->s3->tmp.new_mac_secret_size = mac_secret_size;
    num = EVP_CIPHER_key_length(c) + mac_secret_size + EVP_CIPHER_iv_length(c);
    num *= 2;

    ssl3_cleanup_key_block(s);

    if ((p = OPENSSL_malloc(num)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_SETUP_KEY_BLOCK,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    s->s3->tmp.key_block_length = num;
    s->s3->tmp.key_block = p;
    if (!tls1_generate_key_block(s, p, num)) {

        goto err;
    }
    if (!(s->options & SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS)
        && s->method->version <= TLS1_VERSION) {




        s->s3->need_empty_fragments = 1;

        if (s->session->cipher != ((void*)0)) {
            if (s->session->cipher->algorithm_enc == SSL_eNULL)
                s->s3->need_empty_fragments = 0;


            if (s->session->cipher->algorithm_enc == SSL_RC4)
                s->s3->need_empty_fragments = 0;

        }
    }

    ret = 1;
 err:
    return ret;
}
