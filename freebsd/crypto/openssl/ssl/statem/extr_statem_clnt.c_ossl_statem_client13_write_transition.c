
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WRITE_TRAN ;
struct TYPE_12__ {int hand_state; } ;
struct TYPE_8__ {int early_data; } ;
struct TYPE_11__ {int shutdown; int options; int key_update; TYPE_3__* s3; TYPE_1__ ext; int hello_retry_request; int early_data_state; int post_handshake_auth; TYPE_5__ statem; } ;
struct TYPE_9__ {int cert_req; } ;
struct TYPE_10__ {TYPE_2__ tmp; } ;
typedef TYPE_4__ SSL ;
typedef TYPE_5__ OSSL_STATEM ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_EARLY_DATA_FINISHED_WRITING ;
 int SSL_EARLY_DATA_WRITE_RETRY ;
 int SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION ;
 int SSL_HRR_NONE ;
 int SSL_KEY_UPDATE_NONE ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_PHA_REQUESTED ;
 int SSL_SENT_SHUTDOWN ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int WRITE_TRAN_CONTINUE ;
 int WRITE_TRAN_ERROR ;
 int WRITE_TRAN_FINISHED ;
 int ossl_assert (int) ;

__attribute__((used)) static WRITE_TRAN ossl_statem_client13_write_transition(SSL *s)
{
    OSSL_STATEM *st = &s->statem;






    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION,
                 ERR_R_INTERNAL_ERROR);
        return WRITE_TRAN_ERROR;

    case 139:
        if (s->post_handshake_auth == SSL_PHA_REQUESTED) {
            st->hand_state = 135;
            return WRITE_TRAN_CONTINUE;
        }




        if (!ossl_assert((s->shutdown & SSL_SENT_SHUTDOWN) != 0)) {

            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION,
                     ERR_R_INTERNAL_ERROR);
            return WRITE_TRAN_ERROR;
        }
        st->hand_state = 129;
        return WRITE_TRAN_CONTINUE;

    case 138:
        if (s->early_data_state == SSL_EARLY_DATA_WRITE_RETRY
                || s->early_data_state == SSL_EARLY_DATA_FINISHED_WRITING)
            st->hand_state = 128;
        else if ((s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) != 0
                 && s->hello_retry_request == SSL_HRR_NONE)
            st->hand_state = 133;
        else
            st->hand_state = (s->s3->tmp.cert_req != 0) ? 135
                                                        : 131;
        return WRITE_TRAN_CONTINUE;

    case 128:
        if (s->ext.early_data == SSL_EARLY_DATA_ACCEPTED) {
            st->hand_state = 132;
            return WRITE_TRAN_CONTINUE;
        }


    case 132:
    case 133:
        st->hand_state = (s->s3->tmp.cert_req != 0) ? 135
                                                    : 131;
        return WRITE_TRAN_CONTINUE;

    case 135:

        st->hand_state = (s->s3->tmp.cert_req == 1) ? 134
                                                    : 131;
        return WRITE_TRAN_CONTINUE;

    case 134:
        st->hand_state = 131;
        return WRITE_TRAN_CONTINUE;

    case 137:
    case 130:
    case 136:
    case 131:
        st->hand_state = 129;
        return WRITE_TRAN_CONTINUE;

    case 129:
        if (s->key_update != SSL_KEY_UPDATE_NONE) {
            st->hand_state = 130;
            return WRITE_TRAN_CONTINUE;
        }


        return WRITE_TRAN_FINISHED;
    }
}
