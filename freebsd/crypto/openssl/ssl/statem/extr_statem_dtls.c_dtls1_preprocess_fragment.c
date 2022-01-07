
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct hm_header_st {size_t msg_len; size_t frag_off; size_t frag_len; int seq; int type; } ;
struct TYPE_13__ {TYPE_4__* d1; TYPE_2__* s3; int init_buf; } ;
struct TYPE_11__ {scalar_t__ frag_off; size_t msg_len; int seq; int type; } ;
struct TYPE_12__ {TYPE_3__ r_msg_hdr; } ;
struct TYPE_9__ {size_t message_size; int message_type; } ;
struct TYPE_10__ {TYPE_1__ tmp; } ;
typedef TYPE_5__ SSL ;


 int BUF_MEM_grow_clean (int ,scalar_t__) ;
 scalar_t__ DTLS1_HM_HEADER_LENGTH ;
 int ERR_R_BUF_LIB ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS1_PREPROCESS_FRAGMENT ;
 int SSL_R_EXCESSIVE_MESSAGE_SIZE ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 size_t dtls1_max_handshake_message_len (TYPE_5__*) ;

__attribute__((used)) static int dtls1_preprocess_fragment(SSL *s, struct hm_header_st *msg_hdr)
{
    size_t frag_off, frag_len, msg_len;

    msg_len = msg_hdr->msg_len;
    frag_off = msg_hdr->frag_off;
    frag_len = msg_hdr->frag_len;


    if ((frag_off + frag_len) > msg_len
            || msg_len > dtls1_max_handshake_message_len(s)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_DTLS1_PREPROCESS_FRAGMENT,
                 SSL_R_EXCESSIVE_MESSAGE_SIZE);
        return 0;
    }

    if (s->d1->r_msg_hdr.frag_off == 0) {




        if (!BUF_MEM_grow_clean(s->init_buf, msg_len + DTLS1_HM_HEADER_LENGTH)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_PREPROCESS_FRAGMENT,
                     ERR_R_BUF_LIB);
            return 0;
        }

        s->s3->tmp.message_size = msg_len;
        s->d1->r_msg_hdr.msg_len = msg_len;
        s->s3->tmp.message_type = msg_hdr->type;
        s->d1->r_msg_hdr.type = msg_hdr->type;
        s->d1->r_msg_hdr.seq = msg_hdr->seq;
    } else if (msg_len != s->d1->r_msg_hdr.msg_len) {




        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_DTLS1_PREPROCESS_FRAGMENT,
                 SSL_R_EXCESSIVE_MESSAGE_SIZE);
        return 0;
    }

    return 1;
}
