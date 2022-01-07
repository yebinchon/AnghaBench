
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int WORK_STATE ;
struct TYPE_29__ {int hand_state; } ;
struct TYPE_28__ {int options; int first_packet; TYPE_6__* method; int post_handshake_auth; int hit; TYPE_4__* s3; TYPE_1__* session; int max_early_data; int early_data_state; int hello_retry_request; int * enc_write_ctx; scalar_t__ init_num; TYPE_8__ statem; } ;
struct TYPE_27__ {TYPE_5__* ssl3_enc; } ;
struct TYPE_26__ {int (* change_cipher_state ) (TYPE_7__*,int) ;int (* setup_key_block ) (TYPE_7__*) ;} ;
struct TYPE_24__ {TYPE_2__* new_compression; int new_cipher; } ;
struct TYPE_25__ {TYPE_3__ tmp; } ;
struct TYPE_23__ {int id; } ;
struct TYPE_22__ {int compress_meth; int cipher; } ;
typedef TYPE_7__ SSL ;
typedef TYPE_8__ OSSL_STATEM ;


 int BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY ;
 int BIO_ctrl (int ,int ,int ,int *) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int SSL3_CC_APPLICATION ;
 int SSL3_CC_EARLY ;
 int SSL3_CC_WRITE ;
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ;
 int SSL_EARLY_DATA_CONNECTING ;
 int SSL_HRR_PENDING ;
 int SSL_IS_DTLS (TYPE_7__*) ;
 int SSL_IS_TLS13 (TYPE_7__*) ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_PHA_REQUESTED ;
 int SSL_get_wbio (TYPE_7__*) ;






 int WORK_ERROR ;
 int WORK_FINISHED_CONTINUE ;
 int WORK_MORE_A ;
 int WORK_MORE_B ;
 int dtls1_reset_seq_numbers (TYPE_7__*,int ) ;
 int statem_flush (TYPE_7__*) ;
 int stub1 (TYPE_7__*) ;
 int stub2 (TYPE_7__*,int) ;
 int stub3 (TYPE_7__*,int) ;
 int tls13_change_cipher_state (TYPE_7__*,int) ;
 int tls13_save_handshake_digest_for_pha (TYPE_7__*) ;
 int tls13_update_key (TYPE_7__*,int) ;
 int tls_client_key_exchange_post_work (TYPE_7__*) ;

WORK_STATE ossl_statem_client_post_work(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    s->init_num = 0;

    switch (st->hand_state) {
    default:

        break;

    case 132:
        if (s->early_data_state == SSL_EARLY_DATA_CONNECTING
                && s->max_early_data > 0) {





            if ((s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) == 0) {
                if (!tls13_change_cipher_state(s,
                            SSL3_CC_EARLY | SSL3_CHANGE_CIPHER_CLIENT_WRITE)) {

                    return WORK_ERROR;
                }
            }

        } else if (!statem_flush(s)) {
            return WORK_MORE_A;
        }

        if (SSL_IS_DTLS(s)) {

            s->first_packet = 1;
        }
        break;

    case 131:




        EVP_CIPHER_CTX_free(s->enc_write_ctx);
        s->enc_write_ctx = ((void*)0);
        break;

    case 129:
        if (tls_client_key_exchange_post_work(s) == 0) {

            return WORK_ERROR;
        }
        break;

    case 133:
        if (SSL_IS_TLS13(s) || s->hello_retry_request == SSL_HRR_PENDING)
            break;
        if (s->early_data_state == SSL_EARLY_DATA_CONNECTING
                    && s->max_early_data > 0) {





            if (!tls13_change_cipher_state(s,
                        SSL3_CC_EARLY | SSL3_CHANGE_CIPHER_CLIENT_WRITE))
                return WORK_ERROR;
            break;
        }
        s->session->cipher = s->s3->tmp.new_cipher;



        if (s->s3->tmp.new_compression == ((void*)0))
            s->session->compress_meth = 0;
        else
            s->session->compress_meth = s->s3->tmp.new_compression->id;

        if (!s->method->ssl3_enc->setup_key_block(s)) {

            return WORK_ERROR;
        }

        if (!s->method->ssl3_enc->change_cipher_state(s,
                                          SSL3_CHANGE_CIPHER_CLIENT_WRITE)) {

            return WORK_ERROR;
        }

        if (SSL_IS_DTLS(s)) {

            if (s->hit) {




                BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY,
                         0, ((void*)0));
            }


            dtls1_reset_seq_numbers(s, SSL3_CC_WRITE);
        }
        break;

    case 130:

        if (wst == WORK_MORE_A && SSL_IS_DTLS(s) && s->hit == 0) {




            BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY,
                     0, ((void*)0));
        }

        if (statem_flush(s) != 1)
            return WORK_MORE_B;

        if (SSL_IS_TLS13(s)) {
            if (!tls13_save_handshake_digest_for_pha(s)) {

                return WORK_ERROR;
            }
            if (s->post_handshake_auth != SSL_PHA_REQUESTED) {
                if (!s->method->ssl3_enc->change_cipher_state(s,
                        SSL3_CC_APPLICATION | SSL3_CHANGE_CIPHER_CLIENT_WRITE)) {

                    return WORK_ERROR;
                }
            }
        }
        break;

    case 128:
        if (statem_flush(s) != 1)
            return WORK_MORE_A;
        if (!tls13_update_key(s, 1)) {

            return WORK_ERROR;
        }
        break;
    }

    return WORK_FINISHED_CONTINUE;
}
