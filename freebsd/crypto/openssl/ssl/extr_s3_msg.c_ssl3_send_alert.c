
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ version; TYPE_3__* method; int rlayer; TYPE_2__* s3; int * session; int session_ctx; } ;
struct TYPE_10__ {int (* ssl_dispatch_alert ) (TYPE_4__*) ;TYPE_1__* ssl3_enc; } ;
struct TYPE_9__ {int alert_dispatch; int* send_alert; } ;
struct TYPE_8__ {int (* alert_value ) (int) ;} ;
typedef TYPE_4__ SSL ;


 int RECORD_LAYER_write_pending (int *) ;
 int SSL3_AL_FATAL ;
 scalar_t__ SSL3_VERSION ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_PROTOCOL_VERSION ;
 int SSL_CTX_remove_session (int ,int *) ;
 scalar_t__ SSL_TREAT_AS_TLS13 (TYPE_4__*) ;
 int stub1 (int) ;
 int stub2 (TYPE_4__*) ;
 int tls13_alert_code (int) ;

int ssl3_send_alert(SSL *s, int level, int desc)
{

    if (SSL_TREAT_AS_TLS13(s))
        desc = tls13_alert_code(desc);
    else
        desc = s->method->ssl3_enc->alert_value(desc);
    if (s->version == SSL3_VERSION && desc == SSL_AD_PROTOCOL_VERSION)
        desc = SSL_AD_HANDSHAKE_FAILURE;

    if (desc < 0)
        return -1;

    if ((level == SSL3_AL_FATAL) && (s->session != ((void*)0)))
        SSL_CTX_remove_session(s->session_ctx, s->session);

    s->s3->alert_dispatch = 1;
    s->s3->send_alert[0] = level;
    s->s3->send_alert[1] = desc;
    if (!RECORD_LAYER_write_pending(&s->rlayer)) {

        return s->method->ssl_dispatch_alert(s);
    }




    return -1;
}
