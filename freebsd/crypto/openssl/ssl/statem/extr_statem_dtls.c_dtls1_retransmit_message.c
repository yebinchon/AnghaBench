
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct dtls1_retransmit_state {int epoch; int session; int compress; int write_hash; int enc_write_ctx; } ;
typedef int seq64be ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef TYPE_5__ pitem ;
struct TYPE_14__ {int epoch; int session; int compress; int write_hash; int enc_write_ctx; } ;
struct TYPE_15__ {scalar_t__ is_ccs; TYPE_2__ saved_retransmit_state; int frag_len; int seq; scalar_t__ msg_len; int type; } ;
struct TYPE_18__ {TYPE_3__ msg_header; int fragment; } ;
typedef TYPE_6__ hm_fragment ;
struct TYPE_19__ {int wbio; TYPE_4__* d1; int rlayer; int session; int compress; int write_hash; int enc_write_ctx; scalar_t__ init_num; TYPE_1__* init_buf; } ;
struct TYPE_16__ {int retransmitting; int sent_messages; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_7__ SSL ;


 int BIO_flush (int ) ;
 unsigned long DTLS1_CCS_HEADER_LENGTH ;
 unsigned long DTLS1_HM_HEADER_LENGTH ;
 int DTLS_RECORD_LAYER_get_w_epoch (int *) ;
 int DTLS_RECORD_LAYER_set_saved_w_epoch (int *,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int SSL3_RT_CHANGE_CIPHER_SPEC ;
 int SSL3_RT_HANDSHAKE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS1_RETRANSMIT_MESSAGE ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 int dtls1_do_write (TYPE_7__*,int ) ;
 int dtls1_set_message_header_int (TYPE_7__*,int ,scalar_t__,int ,int ,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (unsigned char*,int ,int) ;
 TYPE_5__* pqueue_find (int ,unsigned char*) ;

int dtls1_retransmit_message(SSL *s, unsigned short seq, int *found)
{
    int ret;

    pitem *item;
    hm_fragment *frag;
    unsigned long header_length;
    unsigned char seq64be[8];
    struct dtls1_retransmit_state saved_state;


    memset(seq64be, 0, sizeof(seq64be));
    seq64be[6] = (unsigned char)(seq >> 8);
    seq64be[7] = (unsigned char)seq;

    item = pqueue_find(s->d1->sent_messages, seq64be);
    if (item == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_RETRANSMIT_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        *found = 0;
        return 0;
    }

    *found = 1;
    frag = (hm_fragment *)item->data;

    if (frag->msg_header.is_ccs)
        header_length = DTLS1_CCS_HEADER_LENGTH;
    else
        header_length = DTLS1_HM_HEADER_LENGTH;

    memcpy(s->init_buf->data, frag->fragment,
           frag->msg_header.msg_len + header_length);
    s->init_num = frag->msg_header.msg_len + header_length;

    dtls1_set_message_header_int(s, frag->msg_header.type,
                                 frag->msg_header.msg_len,
                                 frag->msg_header.seq, 0,
                                 frag->msg_header.frag_len);


    saved_state.enc_write_ctx = s->enc_write_ctx;
    saved_state.write_hash = s->write_hash;
    saved_state.compress = s->compress;
    saved_state.session = s->session;
    saved_state.epoch = DTLS_RECORD_LAYER_get_w_epoch(&s->rlayer);

    s->d1->retransmitting = 1;


    s->enc_write_ctx = frag->msg_header.saved_retransmit_state.enc_write_ctx;
    s->write_hash = frag->msg_header.saved_retransmit_state.write_hash;
    s->compress = frag->msg_header.saved_retransmit_state.compress;
    s->session = frag->msg_header.saved_retransmit_state.session;
    DTLS_RECORD_LAYER_set_saved_w_epoch(&s->rlayer,
                                        frag->msg_header.
                                        saved_retransmit_state.epoch);

    ret = dtls1_do_write(s, frag->msg_header.is_ccs ?
                         SSL3_RT_CHANGE_CIPHER_SPEC : SSL3_RT_HANDSHAKE);


    s->enc_write_ctx = saved_state.enc_write_ctx;
    s->write_hash = saved_state.write_hash;
    s->compress = saved_state.compress;
    s->session = saved_state.session;
    DTLS_RECORD_LAYER_set_saved_w_epoch(&s->rlayer, saved_state.epoch);

    s->d1->retransmitting = 0;

    (void)BIO_flush(s->wbio);
    return ret;
}
