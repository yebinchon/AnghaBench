
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct hm_header_st {size_t msg_len; size_t frag_off; size_t frag_len; scalar_t__ seq; } ;
struct TYPE_22__ {scalar_t__ hand_state; } ;
struct TYPE_25__ {size_t init_num; void* rwstate; TYPE_7__* method; TYPE_6__* init_buf; int msg_callback_arg; int version; int (* msg_callback ) (int ,int ,int ,unsigned char*,int,TYPE_8__*,int ) ;TYPE_5__ statem; TYPE_4__* d1; int server; int rlayer; TYPE_2__* s3; scalar_t__ init_msg; } ;
struct TYPE_24__ {int (* ssl_read_bytes ) (TYPE_8__*,int ,int*,unsigned char*,int,int ,size_t*) ;} ;
struct TYPE_23__ {scalar_t__ data; } ;
struct TYPE_20__ {scalar_t__ frag_off; } ;
struct TYPE_21__ {scalar_t__ handshake_read_seq; TYPE_3__ r_msg_hdr; } ;
struct TYPE_18__ {size_t message_size; int message_type; } ;
struct TYPE_19__ {TYPE_1__ tmp; } ;
typedef TYPE_8__ SSL ;


 int DTLS1_HM_HEADER_LENGTH ;
 size_t RECORD_LAYER_get_rrec_length (int *) ;
 unsigned char SSL3_MT_CCS ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 unsigned char SSL3_MT_HELLO_REQUEST ;
 int SSL3_RT_CHANGE_CIPHER_SPEC ;
 int SSL3_RT_HANDSHAKE ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 int SSL_F_DTLS_GET_REASSEMBLED_MESSAGE ;
 void* SSL_READING ;
 int SSL_R_BAD_CHANGE_CIPHER_SPEC ;
 int SSL_R_BAD_LENGTH ;
 int SSL_R_UNEXPECTED_MESSAGE ;
 int SSLfatal (TYPE_8__*,int ,int ,int ) ;
 scalar_t__ TLS_ST_OK ;
 int dtls1_get_message_header (unsigned char*,struct hm_header_st*) ;
 int dtls1_preprocess_fragment (TYPE_8__*,struct hm_header_st*) ;
 int dtls1_process_out_of_seq_message (TYPE_8__*,struct hm_header_st*) ;
 int dtls1_reassemble_fragment (TYPE_8__*,struct hm_header_st*) ;
 int dtls1_retrieve_buffered_fragment (TYPE_8__*,size_t*) ;
 int memcpy (scalar_t__,unsigned char*,size_t) ;
 int stub1 (TYPE_8__*,int ,int*,unsigned char*,int,int ,size_t*) ;
 int stub2 (int ,int ,int ,unsigned char*,int,TYPE_8__*,int ) ;
 int stub3 (TYPE_8__*,int ,int*,unsigned char*,size_t,int ,size_t*) ;

__attribute__((used)) static int dtls_get_reassembled_message(SSL *s, int *errtype, size_t *len)
{
    unsigned char wire[DTLS1_HM_HEADER_LENGTH];
    size_t mlen, frag_off, frag_len;
    int i, ret, recvd_type;
    struct hm_header_st msg_hdr;
    size_t readbytes;

    *errtype = 0;

 redo:

    ret = dtls1_retrieve_buffered_fragment(s, &frag_len);
    if (ret < 0) {

        return 0;
    }
    if (ret > 0) {
        s->init_num = frag_len;
        *len = frag_len;
        return 1;
    }


    i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, &recvd_type, wire,
                                  DTLS1_HM_HEADER_LENGTH, 0, &readbytes);
    if (i <= 0) {
        s->rwstate = SSL_READING;
        *len = 0;
        return 0;
    }
    if (recvd_type == SSL3_RT_CHANGE_CIPHER_SPEC) {
        if (wire[0] != SSL3_MT_CCS) {
            SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                     SSL_F_DTLS_GET_REASSEMBLED_MESSAGE,
                     SSL_R_BAD_CHANGE_CIPHER_SPEC);
            goto f_err;
        }

        memcpy(s->init_buf->data, wire, readbytes);
        s->init_num = readbytes - 1;
        s->init_msg = s->init_buf->data + 1;
        s->s3->tmp.message_type = SSL3_MT_CHANGE_CIPHER_SPEC;
        s->s3->tmp.message_size = readbytes - 1;
        *len = readbytes - 1;
        return 1;
    }


    if (readbytes != DTLS1_HM_HEADER_LENGTH) {
        SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                 SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, SSL_R_UNEXPECTED_MESSAGE);
        goto f_err;
    }


    dtls1_get_message_header(wire, &msg_hdr);

    mlen = msg_hdr.msg_len;
    frag_off = msg_hdr.frag_off;
    frag_len = msg_hdr.frag_len;





    if (frag_len > RECORD_LAYER_get_rrec_length(&s->rlayer)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, SSL_R_BAD_LENGTH);
        goto f_err;
    }







    if (msg_hdr.seq != s->d1->handshake_read_seq) {
        *errtype = dtls1_process_out_of_seq_message(s, &msg_hdr);
        return 0;
    }

    if (frag_len && frag_len < mlen) {
        *errtype = dtls1_reassemble_fragment(s, &msg_hdr);
        return 0;
    }

    if (!s->server
            && s->d1->r_msg_hdr.frag_off == 0
            && s->statem.hand_state != TLS_ST_OK
            && wire[0] == SSL3_MT_HELLO_REQUEST) {





        if (wire[1] == 0 && wire[2] == 0 && wire[3] == 0) {
            if (s->msg_callback)
                s->msg_callback(0, s->version, SSL3_RT_HANDSHAKE,
                                wire, DTLS1_HM_HEADER_LENGTH, s,
                                s->msg_callback_arg);

            s->init_num = 0;
            goto redo;
        } else {

            SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                     SSL_F_DTLS_GET_REASSEMBLED_MESSAGE,
                     SSL_R_UNEXPECTED_MESSAGE);
            goto f_err;
        }
    }

    if (!dtls1_preprocess_fragment(s, &msg_hdr)) {

        goto f_err;
    }

    if (frag_len > 0) {
        unsigned char *p =
            (unsigned char *)s->init_buf->data + DTLS1_HM_HEADER_LENGTH;

        i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, ((void*)0),
                                      &p[frag_off], frag_len, 0, &readbytes);





        if (i <= 0) {
            s->rwstate = SSL_READING;
            *len = 0;
            return 0;
        }
    } else {
        readbytes = 0;
    }





    if (readbytes != frag_len) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_DTLS_GET_REASSEMBLED_MESSAGE, SSL_R_BAD_LENGTH);
        goto f_err;
    }







    *len = s->init_num = frag_len;
    return 1;

 f_err:
    s->init_num = 0;
    *len = 0;
    return 0;
}
