
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ hand_state; } ;
struct TYPE_11__ {size_t init_off; size_t init_num; int msg_callback_arg; TYPE_2__* init_buf; int version; int (* msg_callback ) (int,int ,int,int *,size_t,TYPE_3__*,int ) ;TYPE_1__ statem; } ;
struct TYPE_10__ {int * data; } ;
typedef TYPE_3__ SSL ;


 int SSL3_RT_HANDSHAKE ;
 int SSL_IS_TLS13 (TYPE_3__*) ;
 scalar_t__ TLS_ST_CW_KEY_UPDATE ;
 scalar_t__ TLS_ST_SW_KEY_UPDATE ;
 scalar_t__ TLS_ST_SW_SESSION_TICKET ;
 int ssl3_finish_mac (TYPE_3__*,unsigned char*,size_t) ;
 int ssl3_write_bytes (TYPE_3__*,int,int *,size_t,size_t*) ;
 int stub1 (int,int ,int,int *,size_t,TYPE_3__*,int ) ;

int ssl3_do_write(SSL *s, int type)
{
    int ret;
    size_t written = 0;

    ret = ssl3_write_bytes(s, type, &s->init_buf->data[s->init_off],
                           s->init_num, &written);
    if (ret < 0)
        return -1;
    if (type == SSL3_RT_HANDSHAKE)





        if (!SSL_IS_TLS13(s) || (s->statem.hand_state != TLS_ST_SW_SESSION_TICKET
                                 && s->statem.hand_state != TLS_ST_CW_KEY_UPDATE
                                 && s->statem.hand_state != TLS_ST_SW_KEY_UPDATE))
            if (!ssl3_finish_mac(s,
                                 (unsigned char *)&s->init_buf->data[s->init_off],
                                 written))
                return -1;
    if (written == s->init_num) {
        if (s->msg_callback)
            s->msg_callback(1, s->version, type, s->init_buf->data,
                            (size_t)(s->init_off + s->init_num), s,
                            s->msg_callback_arg);
        return 1;
    }
    s->init_off += written;
    s->init_num -= written;
    return 0;
}
