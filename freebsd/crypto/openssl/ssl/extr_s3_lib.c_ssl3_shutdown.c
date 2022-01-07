
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int shutdown; TYPE_2__* s3; TYPE_1__* method; scalar_t__ quiet_shutdown; } ;
struct TYPE_10__ {scalar_t__ alert_dispatch; } ;
struct TYPE_9__ {int (* ssl_dispatch_alert ) (TYPE_3__*) ;int (* ssl_read_bytes ) (TYPE_3__*,int ,int *,int *,int ,int ,size_t*) ;} ;
typedef TYPE_3__ SSL ;


 int SSL3_AL_WARNING ;
 int SSL_AD_CLOSE_NOTIFY ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_SENT_SHUTDOWN ;
 scalar_t__ SSL_in_before (TYPE_3__*) ;
 int ssl3_send_alert (TYPE_3__*,int ,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*,int ,int *,int *,int ,int ,size_t*) ;

int ssl3_shutdown(SSL *s)
{
    int ret;





    if (s->quiet_shutdown || SSL_in_before(s)) {
        s->shutdown = (SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        return 1;
    }

    if (!(s->shutdown & SSL_SENT_SHUTDOWN)) {
        s->shutdown |= SSL_SENT_SHUTDOWN;
        ssl3_send_alert(s, SSL3_AL_WARNING, SSL_AD_CLOSE_NOTIFY);




        if (s->s3->alert_dispatch)
            return -1;
    } else if (s->s3->alert_dispatch) {

        ret = s->method->ssl_dispatch_alert(s);
        if (ret == -1) {





            return ret;
        }
    } else if (!(s->shutdown & SSL_RECEIVED_SHUTDOWN)) {
        size_t readbytes;



        s->method->ssl_read_bytes(s, 0, ((void*)0), ((void*)0), 0, 0, &readbytes);
        if (!(s->shutdown & SSL_RECEIVED_SHUTDOWN)) {
            return -1;
        }
    }

    if ((s->shutdown == (SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN)) &&
        !s->s3->alert_dispatch)
        return 1;
    else
        return 0;
}
