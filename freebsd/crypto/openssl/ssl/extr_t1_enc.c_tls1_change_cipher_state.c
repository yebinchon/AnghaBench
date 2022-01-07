
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int enc_write_state; } ;
struct TYPE_12__ {scalar_t__ use_etm; } ;
struct TYPE_17__ {TYPE_1__ statem; TYPE_5__* s3; int rlayer; int * compress; int * write_hash; int * enc_write_ctx; int mac_flags; TYPE_2__ ext; int * expand; int * read_hash; int * enc_read_ctx; } ;
struct TYPE_16__ {int method; } ;
struct TYPE_14__ {int new_mac_pkey_type; unsigned char* key_block; size_t new_mac_secret_size; size_t key_block_length; TYPE_3__* new_cipher; TYPE_6__* new_compression; int * new_hash; int * new_sym_enc; } ;
struct TYPE_15__ {unsigned char* read_mac_secret; size_t read_mac_secret_size; unsigned char* write_mac_secret; size_t write_mac_secret_size; TYPE_4__ tmp; int flags; } ;
struct TYPE_13__ {int algorithm2; int algorithm_enc; } ;
typedef TYPE_6__ SSL_COMP ;
typedef TYPE_7__ SSL ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int COMP_CTX_free (int *) ;
 void* COMP_CTX_new (int ) ;
 int ENC_WRITE_STATE_INVALID ;
 int ENC_WRITE_STATE_VALID ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_CCM8_TLS_TAG_LEN ;
 size_t EVP_CCM_TLS_FIXED_IV_LEN ;
 int EVP_CCM_TLS_TAG_LEN ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,int,unsigned char*) ;
 void* EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_reset (int *) ;
 int EVP_CIPHER_flags (int const*) ;
 size_t EVP_CIPHER_iv_length (int const*) ;
 int EVP_CIPHER_key_length (int const*) ;
 scalar_t__ EVP_CIPHER_mode (int const*) ;
 scalar_t__ EVP_CIPH_CCM_MODE ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 scalar_t__ EVP_CIPH_GCM_MODE ;
 int EVP_CTRL_AEAD_SET_IVLEN ;
 int EVP_CTRL_AEAD_SET_MAC_KEY ;
 int EVP_CTRL_AEAD_SET_TAG ;
 int EVP_CTRL_CCM_SET_IV_FIXED ;
 int EVP_CTRL_GCM_SET_IV_FIXED ;
 int EVP_CipherInit_ex (int *,int const*,int *,unsigned char*,unsigned char*,int) ;
 scalar_t__ EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 size_t EVP_GCM_TLS_FIXED_IV_LEN ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_mac_key (int,int *,unsigned char*,int) ;
 int RECORD_LAYER_reset_read_sequence (int *) ;
 int RECORD_LAYER_reset_write_sequence (int *) ;
 int SSL3_CC_READ ;
 int SSL3_CC_WRITE ;
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ;
 int SSL3_CHANGE_CIPHER_SERVER_READ ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AES128CCM8 ;
 int SSL_AES256CCM8 ;
 int SSL_F_TLS1_CHANGE_CIPHER_STATE ;
 scalar_t__ SSL_IS_DTLS (TYPE_7__*) ;
 int SSL_MAC_FLAG_READ_MAC_STREAM ;
 int SSL_MAC_FLAG_WRITE_MAC_STREAM ;
 int SSL_R_COMPRESSION_LIBRARY_ERROR ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 int TLS1_FLAGS_ENCRYPT_THEN_MAC_READ ;
 int TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE ;
 int TLS1_STREAM_MAC ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int printf (char*,...) ;
 int * ssl_replace_hash (int **,int *) ;

int tls1_change_cipher_state(SSL *s, int which)
{
    unsigned char *p, *mac_secret;
    unsigned char *ms, *key, *iv;
    EVP_CIPHER_CTX *dd;
    const EVP_CIPHER *c;

    const SSL_COMP *comp;

    const EVP_MD *m;
    int mac_type;
    size_t *mac_secret_size;
    EVP_MD_CTX *mac_ctx;
    EVP_PKEY *mac_key;
    size_t n, i, j, k, cl;
    int reuse_dd = 0;

    c = s->s3->tmp.new_sym_enc;
    m = s->s3->tmp.new_hash;
    mac_type = s->s3->tmp.new_mac_pkey_type;

    comp = s->s3->tmp.new_compression;


    if (which & SSL3_CC_READ) {
        if (s->ext.use_etm)
            s->s3->flags |= TLS1_FLAGS_ENCRYPT_THEN_MAC_READ;
        else
            s->s3->flags &= ~TLS1_FLAGS_ENCRYPT_THEN_MAC_READ;

        if (s->s3->tmp.new_cipher->algorithm2 & TLS1_STREAM_MAC)
            s->mac_flags |= SSL_MAC_FLAG_READ_MAC_STREAM;
        else
            s->mac_flags &= ~SSL_MAC_FLAG_READ_MAC_STREAM;

        if (s->enc_read_ctx != ((void*)0)) {
            reuse_dd = 1;
        } else if ((s->enc_read_ctx = EVP_CIPHER_CTX_new()) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        } else {



            EVP_CIPHER_CTX_reset(s->enc_read_ctx);
        }
        dd = s->enc_read_ctx;
        mac_ctx = ssl_replace_hash(&s->read_hash, ((void*)0));
        if (mac_ctx == ((void*)0))
            goto err;

        COMP_CTX_free(s->expand);
        s->expand = ((void*)0);
        if (comp != ((void*)0)) {
            s->expand = COMP_CTX_new(comp->method);
            if (s->expand == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                         SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }




        if (!SSL_IS_DTLS(s))
            RECORD_LAYER_reset_read_sequence(&s->rlayer);
        mac_secret = &(s->s3->read_mac_secret[0]);
        mac_secret_size = &(s->s3->read_mac_secret_size);
    } else {
        s->statem.enc_write_state = ENC_WRITE_STATE_INVALID;
        if (s->ext.use_etm)
            s->s3->flags |= TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE;
        else
            s->s3->flags &= ~TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE;

        if (s->s3->tmp.new_cipher->algorithm2 & TLS1_STREAM_MAC)
            s->mac_flags |= SSL_MAC_FLAG_WRITE_MAC_STREAM;
        else
            s->mac_flags &= ~SSL_MAC_FLAG_WRITE_MAC_STREAM;
        if (s->enc_write_ctx != ((void*)0) && !SSL_IS_DTLS(s)) {
            reuse_dd = 1;
        } else if ((s->enc_write_ctx = EVP_CIPHER_CTX_new()) == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }
        dd = s->enc_write_ctx;
        if (SSL_IS_DTLS(s)) {
            mac_ctx = EVP_MD_CTX_new();
            if (mac_ctx == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                         ERR_R_MALLOC_FAILURE);
                goto err;
            }
            s->write_hash = mac_ctx;
        } else {
            mac_ctx = ssl_replace_hash(&s->write_hash, ((void*)0));
            if (mac_ctx == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                         ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }

        COMP_CTX_free(s->compress);
        s->compress = ((void*)0);
        if (comp != ((void*)0)) {
            s->compress = COMP_CTX_new(comp->method);
            if (s->compress == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                        SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }




        if (!SSL_IS_DTLS(s))
            RECORD_LAYER_reset_write_sequence(&s->rlayer);
        mac_secret = &(s->s3->write_mac_secret[0]);
        mac_secret_size = &(s->s3->write_mac_secret_size);
    }

    if (reuse_dd)
        EVP_CIPHER_CTX_reset(dd);

    p = s->s3->tmp.key_block;
    i = *mac_secret_size = s->s3->tmp.new_mac_secret_size;


    cl = EVP_CIPHER_key_length(c);
    j = cl;


    if (EVP_CIPHER_mode(c) == EVP_CIPH_GCM_MODE)
        k = EVP_GCM_TLS_FIXED_IV_LEN;
    else if (EVP_CIPHER_mode(c) == EVP_CIPH_CCM_MODE)
        k = EVP_CCM_TLS_FIXED_IV_LEN;
    else
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
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    memcpy(mac_secret, ms, i);

    if (!(EVP_CIPHER_flags(c) & EVP_CIPH_FLAG_AEAD_CIPHER)) {

        mac_key = EVP_PKEY_new_mac_key(mac_type, ((void*)0), mac_secret,
                                               (int)*mac_secret_size);
        if (mac_key == ((void*)0)
            || EVP_DigestSignInit(mac_ctx, ((void*)0), m, ((void*)0), mac_key) <= 0) {
            EVP_PKEY_free(mac_key);
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        EVP_PKEY_free(mac_key);
    }
    if (EVP_CIPHER_mode(c) == EVP_CIPH_GCM_MODE) {
        if (!EVP_CipherInit_ex(dd, c, ((void*)0), key, ((void*)0), (which & SSL3_CC_WRITE))
            || !EVP_CIPHER_CTX_ctrl(dd, EVP_CTRL_GCM_SET_IV_FIXED, (int)k,
                                    iv)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    } else if (EVP_CIPHER_mode(c) == EVP_CIPH_CCM_MODE) {
        int taglen;
        if (s->s3->tmp.
            new_cipher->algorithm_enc & (SSL_AES128CCM8 | SSL_AES256CCM8))
            taglen = EVP_CCM8_TLS_TAG_LEN;
        else
            taglen = EVP_CCM_TLS_TAG_LEN;
        if (!EVP_CipherInit_ex(dd, c, ((void*)0), ((void*)0), ((void*)0), (which & SSL3_CC_WRITE))
            || !EVP_CIPHER_CTX_ctrl(dd, EVP_CTRL_AEAD_SET_IVLEN, 12, ((void*)0))
            || !EVP_CIPHER_CTX_ctrl(dd, EVP_CTRL_AEAD_SET_TAG, taglen, ((void*)0))
            || !EVP_CIPHER_CTX_ctrl(dd, EVP_CTRL_CCM_SET_IV_FIXED, (int)k, iv)
            || !EVP_CipherInit_ex(dd, ((void*)0), ((void*)0), key, ((void*)0), -1)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    } else {
        if (!EVP_CipherInit_ex(dd, c, ((void*)0), key, iv, (which & SSL3_CC_WRITE))) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if ((EVP_CIPHER_flags(c) & EVP_CIPH_FLAG_AEAD_CIPHER) && *mac_secret_size
        && !EVP_CIPHER_CTX_ctrl(dd, EVP_CTRL_AEAD_SET_MAC_KEY,
                                (int)*mac_secret_size, mac_secret)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    s->statem.enc_write_state = ENC_WRITE_STATE_VALID;
    return 1;
 err:
    return 0;
}
