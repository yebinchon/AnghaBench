
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct hm_header_st {size_t msg_len; int seq; int type; } ;
struct TYPE_16__ {size_t init_num; scalar_t__ version; TYPE_4__* init_buf; scalar_t__ init_msg; TYPE_3__* d1; int msg_callback_arg; int (* msg_callback ) (int ,scalar_t__,int ,unsigned char*,size_t,TYPE_5__*,int ) ;TYPE_2__* s3; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {int handshake_read_seq; struct hm_header_st r_msg_hdr; } ;
struct TYPE_12__ {int message_type; } ;
struct TYPE_13__ {TYPE_1__ tmp; } ;
typedef TYPE_5__ SSL ;


 scalar_t__ DTLS1_BAD_VER ;
 int DTLS1_HM_BAD_FRAGMENT ;
 int DTLS1_HM_FRAGMENT_RETRY ;
 scalar_t__ DTLS1_HM_HEADER_LENGTH ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int SSL3_MT_FINISHED ;
 int SSL3_RT_CHANGE_CIPHER_SPEC ;
 int SSL3_RT_HANDSHAKE ;
 int dtls_get_reassembled_message (TYPE_5__*,int*,size_t*) ;
 int l2n3 (size_t,unsigned char*) ;
 int memset (struct hm_header_st*,int ,int) ;
 int s2n (int ,unsigned char*) ;
 int ssl3_finish_mac (TYPE_5__*,unsigned char*,size_t) ;
 int ssl3_take_mac (TYPE_5__*) ;
 int stub1 (int ,scalar_t__,int ,unsigned char*,int,TYPE_5__*,int ) ;
 int stub2 (int ,scalar_t__,int ,unsigned char*,size_t,TYPE_5__*,int ) ;

int dtls_get_message(SSL *s, int *mt, size_t *len)
{
    struct hm_header_st *msg_hdr;
    unsigned char *p;
    size_t msg_len;
    size_t tmplen;
    int errtype;

    msg_hdr = &s->d1->r_msg_hdr;
    memset(msg_hdr, 0, sizeof(*msg_hdr));

 again:
    if (!dtls_get_reassembled_message(s, &errtype, &tmplen)) {
        if (errtype == DTLS1_HM_BAD_FRAGMENT
                || errtype == DTLS1_HM_FRAGMENT_RETRY) {

            goto again;
        }
        return 0;
    }

    *mt = s->s3->tmp.message_type;

    p = (unsigned char *)s->init_buf->data;
    *len = s->init_num;

    if (*mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
        if (s->msg_callback) {
            s->msg_callback(0, s->version, SSL3_RT_CHANGE_CIPHER_SPEC,
                            p, 1, s, s->msg_callback_arg);
        }



        return 1;
    }

    msg_len = msg_hdr->msg_len;


    *(p++) = msg_hdr->type;
    l2n3(msg_len, p);
    s2n(msg_hdr->seq, p);
    l2n3(0, p);
    l2n3(msg_len, p);
    if (s->version != DTLS1_BAD_VER) {
        p -= DTLS1_HM_HEADER_LENGTH;
        msg_len += DTLS1_HM_HEADER_LENGTH;
    }





    if (*mt == SSL3_MT_FINISHED && !ssl3_take_mac(s)) {

        return 0;
    }

    if (!ssl3_finish_mac(s, p, msg_len))
        return 0;
    if (s->msg_callback)
        s->msg_callback(0, s->version, SSL3_RT_HANDSHAKE,
                        p, msg_len, s, s->msg_callback_arg);

    memset(msg_hdr, 0, sizeof(*msg_hdr));

    s->d1->handshake_read_seq++;

    s->init_msg = s->init_buf->data + DTLS1_HM_HEADER_LENGTH;

    return 1;
}
