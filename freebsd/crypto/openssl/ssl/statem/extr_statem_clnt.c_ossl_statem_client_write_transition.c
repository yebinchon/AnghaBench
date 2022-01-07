
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WRITE_TRAN ;
struct TYPE_15__ {int hand_state; } ;
struct TYPE_14__ {int options; int hit; TYPE_2__* s3; int early_data_state; int hello_retry_request; int renegotiate; TYPE_4__ statem; } ;
struct TYPE_12__ {int cert_req; } ;
struct TYPE_13__ {int flags; int npn_seen; TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ OSSL_STATEM ;



 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EARLY_DATA_CONNECTING ;
 int SSL_EARLY_DATA_FINISHED_WRITING ;
 int SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION ;
 int SSL_HRR_PENDING ;
 int SSL_IS_DTLS (TYPE_3__*) ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int TLS1_FLAGS_SKIP_CERT_VERIFY ;
 int WRITE_TRAN_CONTINUE ;
 int WRITE_TRAN_ERROR ;
 int WRITE_TRAN_FINISHED ;
 int ossl_statem_client13_write_transition (TYPE_3__*) ;
 int ssl3_renegotiate_check (TYPE_3__*,int) ;
 int tls_setup_handshake (TYPE_3__*) ;

WRITE_TRAN ossl_statem_client_write_transition(SSL *s)
{
    OSSL_STATEM *st = &s->statem;






    if (SSL_IS_TLS13(s))
        return ossl_statem_client13_write_transition(s);

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_CLIENT_WRITE_TRANSITION,
                 ERR_R_INTERNAL_ERROR);
        return WRITE_TRAN_ERROR;

    case 128:
        if (!s->renegotiate) {




            return WRITE_TRAN_FINISHED;
        }


    case 141:
        st->hand_state = 133;
        return WRITE_TRAN_CONTINUE;

    case 133:
        if (s->early_data_state == SSL_EARLY_DATA_CONNECTING) {




            if ((s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) != 0)
                st->hand_state = 134;
            else
                st->hand_state = 129;
            return WRITE_TRAN_CONTINUE;
        }




        return WRITE_TRAN_FINISHED;

    case 137:





        if ((s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) != 0
                && s->early_data_state != SSL_EARLY_DATA_FINISHED_WRITING)
            st->hand_state = 134;
        else
            st->hand_state = 133;
        return WRITE_TRAN_CONTINUE;

    case 129:
        return WRITE_TRAN_FINISHED;

    case 142:
        st->hand_state = 133;
        return WRITE_TRAN_CONTINUE;

    case 138:
        if (s->s3->tmp.cert_req)
            st->hand_state = 136;
        else
            st->hand_state = 131;
        return WRITE_TRAN_CONTINUE;

    case 136:
        st->hand_state = 131;
        return WRITE_TRAN_CONTINUE;

    case 131:
        if (s->s3->tmp.cert_req == 1) {
            st->hand_state = 135;
        } else {
            st->hand_state = 134;
        }
        if (s->s3->flags & TLS1_FLAGS_SKIP_CERT_VERIFY) {
            st->hand_state = 134;
        }
        return WRITE_TRAN_CONTINUE;

    case 135:
        st->hand_state = 134;
        return WRITE_TRAN_CONTINUE;

    case 134:
        if (s->hello_retry_request == SSL_HRR_PENDING) {
            st->hand_state = 133;
        } else if (s->early_data_state == SSL_EARLY_DATA_CONNECTING) {
            st->hand_state = 129;
        } else {



            if (!SSL_IS_DTLS(s) && s->s3->npn_seen)
                st->hand_state = 130;
            else
                st->hand_state = 132;

        }
        return WRITE_TRAN_CONTINUE;


    case 130:
        st->hand_state = 132;
        return WRITE_TRAN_CONTINUE;


    case 132:
        if (s->hit) {
            st->hand_state = 128;
            return WRITE_TRAN_CONTINUE;
        } else {
            return WRITE_TRAN_FINISHED;
        }

    case 140:
        if (s->hit) {
            st->hand_state = 134;
            return WRITE_TRAN_CONTINUE;
        } else {
            st->hand_state = 128;
            return WRITE_TRAN_CONTINUE;
        }

    case 139:




        if (ssl3_renegotiate_check(s, 1)) {
            if (!tls_setup_handshake(s)) {

                return WRITE_TRAN_ERROR;
            }
            st->hand_state = 133;
            return WRITE_TRAN_CONTINUE;
        }
        st->hand_state = 128;
        return WRITE_TRAN_CONTINUE;
    }
}
