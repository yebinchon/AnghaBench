#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  enc_write_state; } ;
struct TYPE_12__ {scalar_t__ use_etm; } ;
struct TYPE_17__ {TYPE_1__ statem; TYPE_5__* s3; int /*<<< orphan*/  rlayer; int /*<<< orphan*/ * compress; int /*<<< orphan*/ * write_hash; int /*<<< orphan*/ * enc_write_ctx; int /*<<< orphan*/  mac_flags; TYPE_2__ ext; int /*<<< orphan*/ * expand; int /*<<< orphan*/ * read_hash; int /*<<< orphan*/ * enc_read_ctx; } ;
struct TYPE_16__ {int /*<<< orphan*/  method; } ;
struct TYPE_14__ {int new_mac_pkey_type; unsigned char* key_block; size_t new_mac_secret_size; size_t key_block_length; TYPE_3__* new_cipher; TYPE_6__* new_compression; int /*<<< orphan*/ * new_hash; int /*<<< orphan*/ * new_sym_enc; } ;
struct TYPE_15__ {unsigned char* read_mac_secret; size_t read_mac_secret_size; unsigned char* write_mac_secret; size_t write_mac_secret_size; TYPE_4__ tmp; int /*<<< orphan*/  flags; } ;
struct TYPE_13__ {int algorithm2; int algorithm_enc; } ;
typedef  TYPE_6__ SSL_COMP ;
typedef  TYPE_7__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_INVALID ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_VALID ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int EVP_CCM8_TLS_TAG_LEN ; 
 size_t EVP_CCM_TLS_FIXED_IV_LEN ; 
 int EVP_CCM_TLS_TAG_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 size_t FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_CIPH_CCM_MODE ; 
 int EVP_CIPH_FLAG_AEAD_CIPHER ; 
 scalar_t__ EVP_CIPH_GCM_MODE ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_IVLEN ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_MAC_KEY ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_TAG ; 
 int /*<<< orphan*/  EVP_CTRL_CCM_SET_IV_FIXED ; 
 int /*<<< orphan*/  EVP_CTRL_GCM_SET_IV_FIXED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t EVP_GCM_TLS_FIXED_IV_LEN ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int SSL3_CC_READ ; 
 int SSL3_CC_WRITE ; 
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ; 
 int SSL3_CHANGE_CIPHER_SERVER_READ ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int SSL_AES128CCM8 ; 
 int SSL_AES256CCM8 ; 
 int /*<<< orphan*/  SSL_F_TLS1_CHANGE_CIPHER_STATE ; 
 scalar_t__ FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  SSL_MAC_FLAG_READ_MAC_STREAM ; 
 int /*<<< orphan*/  SSL_MAC_FLAG_WRITE_MAC_STREAM ; 
 int /*<<< orphan*/  SSL_R_COMPRESSION_LIBRARY_ERROR ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_FLAGS_ENCRYPT_THEN_MAC_READ ; 
 int /*<<< orphan*/  TLS1_FLAGS_ENCRYPT_THEN_MAC_WRITE ; 
 int TLS1_STREAM_MAC ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC21(SSL *s, int which)
{
    unsigned char *p, *mac_secret;
    unsigned char *ms, *key, *iv;
    EVP_CIPHER_CTX *dd;
    const EVP_CIPHER *c;
#ifndef OPENSSL_NO_COMP
    const SSL_COMP *comp;
#endif
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
#ifndef OPENSSL_NO_COMP
    comp = s->s3->tmp.new_compression;
#endif

    if (which & SSL3_CC_READ) {
        if (s->ext.use_etm)
            s->s3->flags |= TLS1_FLAGS_ENCRYPT_THEN_MAC_READ;
        else
            s->s3->flags &= ~TLS1_FLAGS_ENCRYPT_THEN_MAC_READ;

        if (s->s3->tmp.new_cipher->algorithm2 & TLS1_STREAM_MAC)
            s->mac_flags |= SSL_MAC_FLAG_READ_MAC_STREAM;
        else
            s->mac_flags &= ~SSL_MAC_FLAG_READ_MAC_STREAM;

        if (s->enc_read_ctx != NULL) {
            reuse_dd = 1;
        } else if ((s->enc_read_ctx = FUNC3()) == NULL) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        } else {
            /*
             * make sure it's initialised in case we exit later with an error
             */
            FUNC4(s->enc_read_ctx);
        }
        dd = s->enc_read_ctx;
        mac_ctx = FUNC20(&s->read_hash, NULL);
        if (mac_ctx == NULL)
            goto err;
#ifndef OPENSSL_NO_COMP
        FUNC0(s->expand);
        s->expand = NULL;
        if (comp != NULL) {
            s->expand = FUNC1(comp->method);
            if (s->expand == NULL) {
                FUNC17(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                         SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }
#endif
        /*
         * this is done by dtls1_reset_seq_numbers for DTLS
         */
        if (!FUNC16(s))
            FUNC14(&s->rlayer);
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
        if (s->enc_write_ctx != NULL && !FUNC16(s)) {
            reuse_dd = 1;
        } else if ((s->enc_write_ctx = FUNC3()) == NULL) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }
        dd = s->enc_write_ctx;
        if (FUNC16(s)) {
            mac_ctx = FUNC11();
            if (mac_ctx == NULL) {
                FUNC17(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                         ERR_R_MALLOC_FAILURE);
                goto err;
            }
            s->write_hash = mac_ctx;
        } else {
            mac_ctx = FUNC20(&s->write_hash, NULL);
            if (mac_ctx == NULL) {
                FUNC17(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                         ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
#ifndef OPENSSL_NO_COMP
        FUNC0(s->compress);
        s->compress = NULL;
        if (comp != NULL) {
            s->compress = FUNC1(comp->method);
            if (s->compress == NULL) {
                FUNC17(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS1_CHANGE_CIPHER_STATE,
                        SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }
#endif
        /*
         * this is done by dtls1_reset_seq_numbers for DTLS
         */
        if (!FUNC16(s))
            FUNC15(&s->rlayer);
        mac_secret = &(s->s3->write_mac_secret[0]);
        mac_secret_size = &(s->s3->write_mac_secret_size);
    }

    if (reuse_dd)
        FUNC4(dd);

    p = s->s3->tmp.key_block;
    i = *mac_secret_size = s->s3->tmp.new_mac_secret_size;

    /* TODO(size_t): convert me */
    cl = FUNC7(c);
    j = cl;
    /* Was j=(exp)?5:EVP_CIPHER_key_length(c); */
    /* If GCM/CCM mode only part of IV comes from PRF */
    if (FUNC8(c) == EVP_CIPH_GCM_MODE)
        k = EVP_GCM_TLS_FIXED_IV_LEN;
    else if (FUNC8(c) == EVP_CIPH_CCM_MODE)
        k = EVP_CCM_TLS_FIXED_IV_LEN;
    else
        k = FUNC6(c);
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
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    FUNC18(mac_secret, ms, i);

    if (!(FUNC5(c) & EVP_CIPH_FLAG_AEAD_CIPHER)) {
        /* TODO(size_t): Convert this function */
        mac_key = FUNC13(mac_type, NULL, mac_secret,
                                               (int)*mac_secret_size);
        if (mac_key == NULL
            || FUNC10(mac_ctx, NULL, m, NULL, mac_key) <= 0) {
            FUNC12(mac_key);
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        FUNC12(mac_key);
    }
#ifdef SSL_DEBUG
    printf("which = %04X\nmac key=", which);
    {
        size_t z;
        for (z = 0; z < i; z++)
            printf("%02X%c", ms[z], ((z + 1) % 16) ? ' ' : '\n');
    }
#endif

    if (FUNC8(c) == EVP_CIPH_GCM_MODE) {
        if (!FUNC9(dd, c, NULL, key, NULL, (which & SSL3_CC_WRITE))
            || !FUNC2(dd, EVP_CTRL_GCM_SET_IV_FIXED, (int)k,
                                    iv)) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    } else if (FUNC8(c) == EVP_CIPH_CCM_MODE) {
        int taglen;
        if (s->s3->tmp.
            new_cipher->algorithm_enc & (SSL_AES128CCM8 | SSL_AES256CCM8))
            taglen = EVP_CCM8_TLS_TAG_LEN;
        else
            taglen = EVP_CCM_TLS_TAG_LEN;
        if (!FUNC9(dd, c, NULL, NULL, NULL, (which & SSL3_CC_WRITE))
            || !FUNC2(dd, EVP_CTRL_AEAD_SET_IVLEN, 12, NULL)
            || !FUNC2(dd, EVP_CTRL_AEAD_SET_TAG, taglen, NULL)
            || !FUNC2(dd, EVP_CTRL_CCM_SET_IV_FIXED, (int)k, iv)
            || !FUNC9(dd, NULL, NULL, key, NULL, -1)) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    } else {
        if (!FUNC9(dd, c, NULL, key, iv, (which & SSL3_CC_WRITE))) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }
    /* Needed for "composite" AEADs, such as RC4-HMAC-MD5 */
    if ((FUNC5(c) & EVP_CIPH_FLAG_AEAD_CIPHER) && *mac_secret_size
        && !FUNC2(dd, EVP_CTRL_AEAD_SET_MAC_KEY,
                                (int)*mac_secret_size, mac_secret)) {
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    s->statem.enc_write_state = ENC_WRITE_STATE_VALID;

#ifdef SSL_DEBUG
    printf("which = %04X\nkey=", which);
    {
        int z;
        for (z = 0; z < EVP_CIPHER_key_length(c); z++)
            printf("%02X%c", key[z], ((z + 1) % 16) ? ' ' : '\n');
    }
    printf("\niv=");
    {
        size_t z;
        for (z = 0; z < k; z++)
            printf("%02X%c", iv[z], ((z + 1) % 16) ? ' ' : '\n');
    }
    printf("\n");
#endif

    return 1;
 err:
    return 0;
}