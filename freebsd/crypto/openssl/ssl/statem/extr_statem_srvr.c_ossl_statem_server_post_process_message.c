
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORK_STATE ;
struct TYPE_8__ {int hand_state; } ;
struct TYPE_7__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;


 int WORK_ERROR ;
 int tls_post_process_client_hello (TYPE_1__*,int ) ;
 int tls_post_process_client_key_exchange (TYPE_1__*,int ) ;

WORK_STATE ossl_statem_server_post_process_message(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        return WORK_ERROR;

    case 129:
        return tls_post_process_client_hello(s, wst);

    case 128:
        return tls_post_process_client_key_exchange(s, wst);
    }
}
