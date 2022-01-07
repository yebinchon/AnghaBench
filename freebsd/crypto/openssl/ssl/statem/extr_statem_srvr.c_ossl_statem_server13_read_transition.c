
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int hand_state; } ;
struct TYPE_8__ {int early_data; } ;
struct TYPE_12__ {int post_handshake_auth; int early_data_state; TYPE_4__* session; TYPE_3__* s3; TYPE_1__ ext; int hello_retry_request; TYPE_6__ statem; } ;
struct TYPE_11__ {int * peer; } ;
struct TYPE_9__ {int cert_request; } ;
struct TYPE_10__ {TYPE_2__ tmp; } ;
typedef TYPE_5__ SSL ;
typedef TYPE_6__ OSSL_STATEM ;


 int SSL3_MT_CERTIFICATE ;
 int SSL3_MT_CERTIFICATE_VERIFY ;
 int SSL3_MT_CLIENT_HELLO ;
 int SSL3_MT_END_OF_EARLY_DATA ;
 int SSL3_MT_FINISHED ;
 int SSL3_MT_KEY_UPDATE ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_EARLY_DATA_READING ;
 int SSL_HRR_PENDING ;
 int SSL_PHA_REQUESTED ;




 int TLS_ST_SR_CLNT_HELLO ;

 void* TLS_ST_SR_FINISHED ;
 int TLS_ST_SR_KEY_UPDATE ;


__attribute__((used)) static int ossl_statem_server13_read_transition(SSL *s, int mt)
{
    OSSL_STATEM *st = &s->statem;






    switch (st->hand_state) {
    default:
        break;

    case 133:
        if (s->hello_retry_request == SSL_HRR_PENDING) {
            if (mt == SSL3_MT_CLIENT_HELLO) {
                st->hand_state = TLS_ST_SR_CLNT_HELLO;
                return 1;
            }
            break;
        } else if (s->ext.early_data == SSL_EARLY_DATA_ACCEPTED) {
            if (mt == SSL3_MT_END_OF_EARLY_DATA) {
                st->hand_state = 129;
                return 1;
            }
            break;
        }


    case 129:
    case 128:
        if (s->s3->tmp.cert_request) {
            if (mt == SSL3_MT_CERTIFICATE) {
                st->hand_state = 131;
                return 1;
            }
        } else {
            if (mt == SSL3_MT_FINISHED) {
                st->hand_state = TLS_ST_SR_FINISHED;
                return 1;
            }
        }
        break;

    case 131:
        if (s->session->peer == ((void*)0)) {
            if (mt == SSL3_MT_FINISHED) {
                st->hand_state = TLS_ST_SR_FINISHED;
                return 1;
            }
        } else {
            if (mt == SSL3_MT_CERTIFICATE_VERIFY) {
                st->hand_state = 130;
                return 1;
            }
        }
        break;

    case 130:
        if (mt == SSL3_MT_FINISHED) {
            st->hand_state = TLS_ST_SR_FINISHED;
            return 1;
        }
        break;

    case 132:




        if (s->early_data_state == SSL_EARLY_DATA_READING)
            break;

        if (mt == SSL3_MT_CERTIFICATE
                && s->post_handshake_auth == SSL_PHA_REQUESTED) {
            st->hand_state = 131;
            return 1;
        }

        if (mt == SSL3_MT_KEY_UPDATE) {
            st->hand_state = TLS_ST_SR_KEY_UPDATE;
            return 1;
        }
        break;
    }


    return 0;
}
