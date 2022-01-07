
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hand_state; } ;
struct TYPE_4__ {size_t max_cert_list; TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 size_t CCS_MAX_LENGTH ;
 size_t CLIENT_HELLO_MAX_LENGTH ;
 size_t CLIENT_KEY_EXCH_MAX_LENGTH ;
 size_t END_OF_EARLY_DATA_MAX_LENGTH ;
 size_t FINISHED_MAX_LENGTH ;
 size_t KEY_UPDATE_MAX_LENGTH ;
 size_t NEXT_PROTO_MAX_LENGTH ;
 size_t SSL3_RT_MAX_PLAIN_LENGTH ;
size_t ossl_statem_server_max_message_size(SSL *s)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        return 0;

    case 133:
        return CLIENT_HELLO_MAX_LENGTH;

    case 132:
        return END_OF_EARLY_DATA_MAX_LENGTH;

    case 136:
        return s->max_cert_list;

    case 130:
        return CLIENT_KEY_EXCH_MAX_LENGTH;

    case 135:
        return SSL3_RT_MAX_PLAIN_LENGTH;


    case 128:
        return NEXT_PROTO_MAX_LENGTH;


    case 134:
        return CCS_MAX_LENGTH;

    case 131:
        return FINISHED_MAX_LENGTH;

    case 129:
        return KEY_UPDATE_MAX_LENGTH;
    }
}
