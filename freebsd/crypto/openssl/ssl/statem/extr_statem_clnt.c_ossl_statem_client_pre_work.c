
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WORK_STATE ;
struct TYPE_10__ {int hand_state; int use_timer; } ;
struct TYPE_9__ {int early_data_state; int hit; int shutdown; TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int BIO_dgram_is_sctp (int ) ;
 int SSL_EARLY_DATA_FINISHED_WRITING ;
 int SSL_EARLY_DATA_NONE ;
 int SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_get_wbio (TYPE_1__*) ;





 int WORK_ERROR ;
 int WORK_FINISHED_CONTINUE ;
 int dtls_wait_for_dry (TYPE_1__*) ;
 int ssl3_init_finished_mac (TYPE_1__*) ;
 int tls_finish_handshake (TYPE_1__*,int ,int,int) ;

WORK_STATE ossl_statem_client_pre_work(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        break;

    case 131:
        s->shutdown = 0;
        if (SSL_IS_DTLS(s)) {

            if (!ssl3_init_finished_mac(s)) {

                return WORK_ERROR;
            }
        }
        break;

    case 132:
        if (SSL_IS_DTLS(s)) {
            if (s->hit) {




                st->use_timer = 0;
            }

            if (BIO_dgram_is_sctp(SSL_get_wbio(s))) {

                return dtls_wait_for_dry(s);
            }

        }
        break;

    case 128:





        if (s->early_data_state == SSL_EARLY_DATA_FINISHED_WRITING
                || s->early_data_state == SSL_EARLY_DATA_NONE)
            return WORK_FINISHED_CONTINUE;


    case 130:
        return tls_finish_handshake(s, wst, 0, 1);

    case 129:

        return tls_finish_handshake(s, wst, 1, 1);
    }

    return WORK_FINISHED_CONTINUE;
}
