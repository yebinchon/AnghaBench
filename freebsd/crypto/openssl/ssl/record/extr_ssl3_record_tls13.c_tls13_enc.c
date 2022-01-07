
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int uint32_t ;
typedef int recheader ;
typedef int WPACKET ;
struct TYPE_24__ {TYPE_7__* new_cipher; } ;
struct TYPE_25__ {TYPE_8__ tmp; } ;
struct TYPE_23__ {int algorithm_enc; } ;
struct TYPE_20__ {scalar_t__ max_early_data; } ;
struct TYPE_22__ {TYPE_5__* cipher; TYPE_4__ ext; } ;
struct TYPE_21__ {int algorithm_enc; } ;
struct TYPE_17__ {scalar_t__ max_early_data; } ;
struct TYPE_19__ {TYPE_2__* cipher; TYPE_1__ ext; } ;
struct TYPE_18__ {int algorithm_enc; } ;
struct TYPE_16__ {unsigned char* write_iv; unsigned char* read_iv; scalar_t__ early_data_state; TYPE_9__* s3; TYPE_6__* psksession; TYPE_3__* session; int rlayer; int * enc_read_ctx; int * enc_write_ctx; } ;
struct TYPE_15__ {scalar_t__ type; unsigned char* data; unsigned char* input; size_t length; size_t rec_version; } ;
typedef TYPE_10__ SSL3_RECORD ;
typedef TYPE_11__ SSL ;
typedef int EVP_CIPHER_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 size_t EVP_CCM8_TLS_TAG_LEN ;
 size_t EVP_CCM_TLS_TAG_LEN ;
 size_t EVP_CHACHAPOLY_TLS_TAG_LEN ;
 scalar_t__ EVP_CIPHER_CTX_ctrl (int *,int ,size_t,unsigned char*) ;
 size_t EVP_CIPHER_CTX_iv_length (int *) ;
 int EVP_CTRL_AEAD_GET_TAG ;
 int EVP_CTRL_AEAD_SET_TAG ;
 scalar_t__ EVP_CipherFinal_ex (int *,unsigned char*,int*) ;
 scalar_t__ EVP_CipherInit_ex (int *,int *,int *,int *,unsigned char*,int) ;
 scalar_t__ EVP_CipherUpdate (int *,unsigned char*,int*,unsigned char*,unsigned int) ;
 size_t EVP_GCM_TLS_TAG_LEN ;
 int EVP_MAX_IV_LENGTH ;
 unsigned char* RECORD_LAYER_get_read_sequence (int *) ;
 unsigned char* RECORD_LAYER_get_write_sequence (int *) ;
 size_t SEQ_NUM_SIZE ;
 scalar_t__ SSL3_RT_ALERT ;
 int SSL3_RT_HEADER_LENGTH ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AES128CCM8 ;
 int SSL_AES256CCM8 ;
 int SSL_AESCCM ;
 int SSL_AESGCM ;
 int SSL_CHACHA20 ;
 scalar_t__ SSL_EARLY_DATA_WRITE_RETRY ;
 scalar_t__ SSL_EARLY_DATA_WRITING ;
 int SSL_F_TLS13_ENC ;
 int SSLfatal (TYPE_11__*,int ,int ,int ) ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_init_static_len (int *,unsigned char*,int,int ) ;
 int WPACKET_put_bytes_u16 (int *,size_t) ;
 int WPACKET_put_bytes_u8 (int *,scalar_t__) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int ossl_assert (int) ;

int tls13_enc(SSL *s, SSL3_RECORD *recs, size_t n_recs, int sending)
{
    EVP_CIPHER_CTX *ctx;
    unsigned char iv[EVP_MAX_IV_LENGTH], recheader[SSL3_RT_HEADER_LENGTH];
    size_t ivlen, taglen, offset, loop, hdrlen;
    unsigned char *staticiv;
    unsigned char *seq;
    int lenu, lenf;
    SSL3_RECORD *rec = &recs[0];
    uint32_t alg_enc;
    WPACKET wpkt;

    if (n_recs != 1) {


        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }

    if (sending) {
        ctx = s->enc_write_ctx;
        staticiv = s->write_iv;
        seq = RECORD_LAYER_get_write_sequence(&s->rlayer);
    } else {
        ctx = s->enc_read_ctx;
        staticiv = s->read_iv;
        seq = RECORD_LAYER_get_read_sequence(&s->rlayer);
    }







    if (ctx == ((void*)0) || rec->type == SSL3_RT_ALERT) {
        memmove(rec->data, rec->input, rec->length);
        rec->input = rec->data;
        return 1;
    }

    ivlen = EVP_CIPHER_CTX_iv_length(ctx);

    if (s->early_data_state == SSL_EARLY_DATA_WRITING
            || s->early_data_state == SSL_EARLY_DATA_WRITE_RETRY) {
        if (s->session != ((void*)0) && s->session->ext.max_early_data > 0) {
            alg_enc = s->session->cipher->algorithm_enc;
        } else {
            if (!ossl_assert(s->psksession != ((void*)0)
                             && s->psksession->ext.max_early_data > 0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                         ERR_R_INTERNAL_ERROR);
                return -1;
            }
            alg_enc = s->psksession->cipher->algorithm_enc;
        }
    } else {




        if (!ossl_assert(s->s3->tmp.new_cipher != ((void*)0))) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
        alg_enc = s->s3->tmp.new_cipher->algorithm_enc;
    }

    if (alg_enc & SSL_AESCCM) {
        if (alg_enc & (SSL_AES128CCM8 | SSL_AES256CCM8))
            taglen = EVP_CCM8_TLS_TAG_LEN;
         else
            taglen = EVP_CCM_TLS_TAG_LEN;
         if (sending && EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, taglen,
                                         ((void*)0)) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
    } else if (alg_enc & SSL_AESGCM) {
        taglen = EVP_GCM_TLS_TAG_LEN;
    } else if (alg_enc & SSL_CHACHA20) {
        taglen = EVP_CHACHAPOLY_TLS_TAG_LEN;
    } else {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }

    if (!sending) {




        if (rec->length < taglen + 1)
            return 0;
        rec->length -= taglen;
    }


    if (ivlen < SEQ_NUM_SIZE) {

        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }
    offset = ivlen - SEQ_NUM_SIZE;
    memcpy(iv, staticiv, offset);
    for (loop = 0; loop < SEQ_NUM_SIZE; loop++)
        iv[offset + loop] = staticiv[offset + loop] ^ seq[loop];


    for (loop = SEQ_NUM_SIZE; loop > 0; loop--) {
        ++seq[loop - 1];
        if (seq[loop - 1] != 0)
            break;
    }
    if (loop == 0) {

        return -1;
    }


    if (EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv, sending) <= 0
            || (!sending && EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG,
                                             taglen,
                                             rec->data + rec->length) <= 0)) {
        return -1;
    }


    if (!WPACKET_init_static_len(&wpkt, recheader, sizeof(recheader), 0)
            || !WPACKET_put_bytes_u8(&wpkt, rec->type)
            || !WPACKET_put_bytes_u16(&wpkt, rec->rec_version)
            || !WPACKET_put_bytes_u16(&wpkt, rec->length + taglen)
            || !WPACKET_get_total_written(&wpkt, &hdrlen)
            || hdrlen != SSL3_RT_HEADER_LENGTH
            || !WPACKET_finish(&wpkt)) {
        WPACKET_cleanup(&wpkt);
        return -1;
    }





    if (((alg_enc & SSL_AESCCM) != 0
                 && EVP_CipherUpdate(ctx, ((void*)0), &lenu, ((void*)0),
                                     (unsigned int)rec->length) <= 0)
            || EVP_CipherUpdate(ctx, ((void*)0), &lenu, recheader,
                                sizeof(recheader)) <= 0
            || EVP_CipherUpdate(ctx, rec->data, &lenu, rec->input,
                                (unsigned int)rec->length) <= 0
            || EVP_CipherFinal_ex(ctx, rec->data + lenu, &lenf) <= 0
            || (size_t)(lenu + lenf) != rec->length) {
        return -1;
    }
    if (sending) {

        if (EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, taglen,
                                rec->data + rec->length) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_ENC,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
        rec->length += taglen;
    }

    return 1;
}
