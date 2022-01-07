
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ ticket_expected; int * hostname; } ;
struct TYPE_30__ {int servername_done; int hit; TYPE_6__ ext; TYPE_5__* session_ctx; TYPE_5__* ctx; TYPE_3__* session; scalar_t__ server; } ;
struct TYPE_28__ {scalar_t__ tick_age_add; scalar_t__ tick_lifetime_hint; scalar_t__ ticklen; int * tick; } ;
struct TYPE_29__ {TYPE_7__ ext; } ;
struct TYPE_25__ {int sess_accept; } ;
struct TYPE_22__ {int (* servername_cb ) (TYPE_9__*,int*,int ) ;int servername_arg; } ;
struct TYPE_26__ {TYPE_4__ stats; TYPE_1__ ext; } ;
struct TYPE_23__ {int * hostname; } ;
struct TYPE_24__ {TYPE_2__ ext; } ;
typedef TYPE_8__ SSL_SESSION ;
typedef TYPE_9__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (int *) ;
 int SSL3_AL_WARNING ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNRECOGNIZED_NAME ;
 int SSL_F_FINAL_SERVER_NAME ;
 scalar_t__ SSL_IS_FIRST_HANDSHAKE (TYPE_9__*) ;
 scalar_t__ SSL_IS_TLS13 (TYPE_9__*) ;
 int SSL_OP_NO_TICKET ;
 int SSL_R_CALLBACK_FAILED ;



 int SSL_TLSEXT_ERR_OK ;
 int SSL_get_options (TYPE_9__*) ;
 TYPE_8__* SSL_get_session (TYPE_9__*) ;
 int SSLfatal (TYPE_9__*,int,int ,int ) ;
 int ossl_assert (int ) ;
 int ssl3_send_alert (TYPE_9__*,int ,int) ;
 int ssl_generate_session_id (TYPE_9__*,TYPE_8__*) ;
 int stub1 (TYPE_9__*,int*,int ) ;
 int stub2 (TYPE_9__*,int*,int ) ;
 int tsan_counter (int *) ;
 int tsan_decr (int *) ;

__attribute__((used)) static int final_server_name(SSL *s, unsigned int context, int sent)
{
    int ret = 128;
    int altmp = SSL_AD_UNRECOGNIZED_NAME;
    int was_ticket = (SSL_get_options(s) & SSL_OP_NO_TICKET) == 0;

    if (!ossl_assert(s->ctx != ((void*)0)) || !ossl_assert(s->session_ctx != ((void*)0))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (s->ctx->ext.servername_cb != ((void*)0))
        ret = s->ctx->ext.servername_cb(s, &altmp,
                                        s->ctx->ext.servername_arg);
    else if (s->session_ctx->ext.servername_cb != ((void*)0))
        ret = s->session_ctx->ext.servername_cb(s, &altmp,
                                       s->session_ctx->ext.servername_arg);
    if (s->server) {

        if (sent && ret == SSL_TLSEXT_ERR_OK && (!s->hit || SSL_IS_TLS13(s))) {

            OPENSSL_free(s->session->ext.hostname);
            s->session->ext.hostname = OPENSSL_strdup(s->ext.hostname);
            if (s->session->ext.hostname == ((void*)0) && s->ext.hostname != ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                         ERR_R_INTERNAL_ERROR);
            }
        }
    }







    if (SSL_IS_FIRST_HANDSHAKE(s) && s->ctx != s->session_ctx) {
        tsan_counter(&s->ctx->stats.sess_accept);
        tsan_decr(&s->session_ctx->stats.sess_accept);
    }






    if (ret == SSL_TLSEXT_ERR_OK && s->ext.ticket_expected
            && was_ticket && (SSL_get_options(s) & SSL_OP_NO_TICKET) != 0) {
        s->ext.ticket_expected = 0;
        if (!s->hit) {
            SSL_SESSION* ss = SSL_get_session(s);

            if (ss != ((void*)0)) {
                OPENSSL_free(ss->ext.tick);
                ss->ext.tick = ((void*)0);
                ss->ext.ticklen = 0;
                ss->ext.tick_lifetime_hint = 0;
                ss->ext.tick_age_add = 0;
                if (!ssl_generate_session_id(s, ss)) {
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                             ERR_R_INTERNAL_ERROR);
                    return 0;
                }
            } else {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }
    }

    switch (ret) {
    case 130:
        SSLfatal(s, altmp, SSL_F_FINAL_SERVER_NAME, SSL_R_CALLBACK_FAILED);
        return 0;

    case 129:

        if (!SSL_IS_TLS13(s))
            ssl3_send_alert(s, SSL3_AL_WARNING, altmp);
        return 1;

    case 128:
        s->servername_done = 0;
        return 1;

    default:
        return 1;
    }
}
