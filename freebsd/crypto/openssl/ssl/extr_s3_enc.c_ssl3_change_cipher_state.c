
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int enc_write_state; } ;
struct TYPE_12__ {TYPE_4__ statem; TYPE_3__* s3; int rlayer; int * compress; int write_hash; int * enc_write_ctx; int * expand; int read_hash; int * enc_read_ctx; } ;
struct TYPE_9__ {unsigned char* key_block; size_t key_block_length; TYPE_1__* new_compression; int * new_hash; int * new_sym_enc; } ;
struct TYPE_10__ {unsigned char* read_mac_secret; unsigned char* write_mac_secret; TYPE_2__ tmp; } ;
struct TYPE_8__ {int * method; } ;
typedef TYPE_5__ SSL ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef int COMP_METHOD ;


 int COMP_CTX_free (int *) ;
 void* COMP_CTX_new (int *) ;
 int ENC_WRITE_STATE_INVALID ;
 int ENC_WRITE_STATE_VALID ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 void* EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_reset (int *) ;
 size_t EVP_CIPHER_iv_length (int const*) ;
 size_t EVP_CIPHER_key_length (int const*) ;
 int EVP_CipherInit_ex (int *,int const*,int *,unsigned char*,unsigned char*,int) ;
 int EVP_MD_size (int const*) ;
 int RECORD_LAYER_reset_read_sequence (int *) ;
 int RECORD_LAYER_reset_write_sequence (int *) ;
 int SSL3_CC_READ ;
 int SSL3_CC_WRITE ;
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ;
 int SSL3_CHANGE_CIPHER_SERVER_READ ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_CHANGE_CIPHER_STATE ;
 int SSL_R_COMPRESSION_LIBRARY_ERROR ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int ossl_assert (int ) ;
 int * ssl_replace_hash (int *,int const*) ;

int ssl3_change_cipher_state(SSL *s, int which)
{
    unsigned char *p, *mac_secret;
    unsigned char *ms, *key, *iv;
    EVP_CIPHER_CTX *dd;
    const EVP_CIPHER *c;

    COMP_METHOD *comp;

    const EVP_MD *m;
    int mdi;
    size_t n, i, j, k, cl;
    int reuse_dd = 0;

    c = s->s3->tmp.new_sym_enc;
    m = s->s3->tmp.new_hash;

    if (!ossl_assert(m != ((void*)0))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (s->s3->tmp.new_compression == ((void*)0))
        comp = ((void*)0);
    else
        comp = s->s3->tmp.new_compression->method;


    if (which & SSL3_CC_READ) {
        if (s->enc_read_ctx != ((void*)0)) {
            reuse_dd = 1;
        } else if ((s->enc_read_ctx = EVP_CIPHER_CTX_new()) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        } else {



            EVP_CIPHER_CTX_reset(s->enc_read_ctx);
        }
        dd = s->enc_read_ctx;

        if (ssl_replace_hash(&s->read_hash, m) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }


        COMP_CTX_free(s->expand);
        s->expand = ((void*)0);
        if (comp != ((void*)0)) {
            s->expand = COMP_CTX_new(comp);
            if (s->expand == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_CHANGE_CIPHER_STATE,
                         SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }

        RECORD_LAYER_reset_read_sequence(&s->rlayer);
        mac_secret = &(s->s3->read_mac_secret[0]);
    } else {
        s->statem.enc_write_state = ENC_WRITE_STATE_INVALID;
        if (s->enc_write_ctx != ((void*)0)) {
            reuse_dd = 1;
        } else if ((s->enc_write_ctx = EVP_CIPHER_CTX_new()) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        } else {



            EVP_CIPHER_CTX_reset(s->enc_write_ctx);
        }
        dd = s->enc_write_ctx;
        if (ssl_replace_hash(&s->write_hash, m) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }


        COMP_CTX_free(s->compress);
        s->compress = ((void*)0);
        if (comp != ((void*)0)) {
            s->compress = COMP_CTX_new(comp);
            if (s->compress == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_CHANGE_CIPHER_STATE,
                         SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }

        RECORD_LAYER_reset_write_sequence(&s->rlayer);
        mac_secret = &(s->s3->write_mac_secret[0]);
    }

    if (reuse_dd)
        EVP_CIPHER_CTX_reset(dd);

    p = s->s3->tmp.key_block;
    mdi = EVP_MD_size(m);
    if (mdi < 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    i = mdi;
    cl = EVP_CIPHER_key_length(c);
    j = cl;
    k = EVP_CIPHER_iv_length(c);
    if ((which == SSL3_CHANGE_CIPHER_CLIENT_WRITE) ||
        (which == SSL3_CHANGE_CIPHER_SERVER_READ)) {
        ms = &(p[0]);
        n = i + i;
        key = &(p[n]);
        n += j + j;
        iv = &(p[n]);
        n += k + k;
    } else {
        n = i;
        ms = &(p[n]);
        n += i + j;
        key = &(p[n]);
        n += j + k;
        iv = &(p[n]);
        n += k;
    }

    if (n > s->s3->tmp.key_block_length) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    memcpy(mac_secret, ms, i);

    if (!EVP_CipherInit_ex(dd, c, ((void*)0), key, iv, (which & SSL3_CC_WRITE))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    s->statem.enc_write_state = ENC_WRITE_STATE_VALID;
    return 1;
 err:
    return 0;
}
