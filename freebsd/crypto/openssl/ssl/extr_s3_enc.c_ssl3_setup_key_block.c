
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* cipher; } ;
struct TYPE_13__ {int options; TYPE_3__* s3; TYPE_5__* session; } ;
struct TYPE_10__ {int key_block_length; unsigned char* key_block; int * new_compression; int const* new_hash; int const* new_sym_enc; } ;
struct TYPE_12__ {int need_empty_fragments; TYPE_1__ tmp; } ;
struct TYPE_11__ {scalar_t__ algorithm_enc; } ;
typedef int SSL_COMP ;
typedef TYPE_4__ SSL ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_CIPHER_iv_length (int const*) ;
 int EVP_CIPHER_key_length (int const*) ;
 int EVP_MD_size (int const*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_SETUP_KEY_BLOCK ;
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ;
 scalar_t__ SSL_RC4 ;
 int SSL_R_CIPHER_OR_HASH_UNAVAILABLE ;
 scalar_t__ SSL_eNULL ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int ssl3_cleanup_key_block (TYPE_4__*) ;
 int ssl3_generate_key_block (TYPE_4__*,unsigned char*,int) ;
 int ssl_cipher_get_evp (TYPE_5__*,int const**,int const**,int *,int *,int **,int ) ;

int ssl3_setup_key_block(SSL *s)
{
    unsigned char *p;
    const EVP_CIPHER *c;
    const EVP_MD *hash;
    int num;
    int ret = 0;
    SSL_COMP *comp;

    if (s->s3->tmp.key_block_length != 0)
        return 1;

    if (!ssl_cipher_get_evp(s->session, &c, &hash, ((void*)0), ((void*)0), &comp, 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_SETUP_KEY_BLOCK,
                 SSL_R_CIPHER_OR_HASH_UNAVAILABLE);
        return 0;
    }

    s->s3->tmp.new_sym_enc = c;
    s->s3->tmp.new_hash = hash;



    s->s3->tmp.new_compression = comp;


    num = EVP_MD_size(hash);
    if (num < 0)
        return 0;

    num = EVP_CIPHER_key_length(c) + num + EVP_CIPHER_iv_length(c);
    num *= 2;

    ssl3_cleanup_key_block(s);

    if ((p = OPENSSL_malloc(num)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_SETUP_KEY_BLOCK,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    s->s3->tmp.key_block_length = num;
    s->s3->tmp.key_block = p;


    ret = ssl3_generate_key_block(s, p, num);

    if (!(s->options & SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS)) {




        s->s3->need_empty_fragments = 1;

        if (s->session->cipher != ((void*)0)) {
            if (s->session->cipher->algorithm_enc == SSL_eNULL)
                s->s3->need_empty_fragments = 0;


            if (s->session->cipher->algorithm_enc == SSL_RC4)
                s->s3->need_empty_fragments = 0;

        }
    }

    return ret;
}
