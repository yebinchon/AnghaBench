
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WRITE_TRAN ;
struct TYPE_9__ {int hand_state; } ;
struct TYPE_7__ {int ticket_expected; } ;
struct TYPE_8__ {int options; int sent_tickets; int num_tickets; int hit; TYPE_1__ ext; int post_handshake_auth; int hello_retry_request; int key_update; TYPE_3__ statem; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ OSSL_STATEM ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_SERVER13_WRITE_TRANSITION ;
 int SSL_HRR_COMPLETE ;
 int SSL_HRR_PENDING ;
 int SSL_KEY_UPDATE_NONE ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_PHA_EXT_RECEIVED ;
 int SSL_PHA_REQUESTED ;
 int SSL_PHA_REQUEST_PENDING ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int WRITE_TRAN_CONTINUE ;
 int WRITE_TRAN_ERROR ;
 int WRITE_TRAN_FINISHED ;
 int send_certificate_request (TYPE_2__*) ;

__attribute__((used)) static WRITE_TRAN ossl_statem_server13_write_transition(SSL *s)
{
    OSSL_STATEM *st = &s->statem;






    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER13_WRITE_TRANSITION,
                 ERR_R_INTERNAL_ERROR);
        return WRITE_TRAN_ERROR;

    case 140:
        if (s->key_update != SSL_KEY_UPDATE_NONE) {
            st->hand_state = 130;
            return WRITE_TRAN_CONTINUE;
        }
        if (s->post_handshake_auth == SSL_PHA_REQUEST_PENDING) {
            st->hand_state = 135;
            return WRITE_TRAN_CONTINUE;
        }

        return WRITE_TRAN_FINISHED;

    case 139:
        st->hand_state = 128;
        return WRITE_TRAN_CONTINUE;

    case 128:
        if ((s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) != 0
                && s->hello_retry_request != SSL_HRR_COMPLETE)
            st->hand_state = 133;
        else if (s->hello_retry_request == SSL_HRR_PENDING)
            st->hand_state = 141;
        else
            st->hand_state = 132;
        return WRITE_TRAN_CONTINUE;

    case 133:
        if (s->hello_retry_request == SSL_HRR_PENDING)
            st->hand_state = 141;
        else
            st->hand_state = 132;
        return WRITE_TRAN_CONTINUE;

    case 132:
        if (s->hit)
            st->hand_state = 131;
        else if (send_certificate_request(s))
            st->hand_state = 135;
        else
            st->hand_state = 136;

        return WRITE_TRAN_CONTINUE;

    case 135:
        if (s->post_handshake_auth == SSL_PHA_REQUEST_PENDING) {
            s->post_handshake_auth = SSL_PHA_REQUESTED;
            st->hand_state = 140;
        } else {
            st->hand_state = 136;
        }
        return WRITE_TRAN_CONTINUE;

    case 136:
        st->hand_state = 134;
        return WRITE_TRAN_CONTINUE;

    case 134:
        st->hand_state = 131;
        return WRITE_TRAN_CONTINUE;

    case 131:
        st->hand_state = 141;
        return WRITE_TRAN_CONTINUE;

    case 141:
        return WRITE_TRAN_FINISHED;

    case 138:





        if (s->post_handshake_auth == SSL_PHA_REQUESTED) {
            s->post_handshake_auth = SSL_PHA_EXT_RECEIVED;
        } else if (!s->ext.ticket_expected) {




            st->hand_state = 140;
            return WRITE_TRAN_CONTINUE;
        }
        if (s->num_tickets > s->sent_tickets)
            st->hand_state = 129;
        else
            st->hand_state = 140;
        return WRITE_TRAN_CONTINUE;

    case 137:
    case 130:
        st->hand_state = 140;
        return WRITE_TRAN_CONTINUE;

    case 129:




        if (s->hit || s->num_tickets <= s->sent_tickets) {

            st->hand_state = 140;
        }
        return WRITE_TRAN_CONTINUE;
    }
}
