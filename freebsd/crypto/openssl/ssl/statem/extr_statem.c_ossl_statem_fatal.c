
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int in_init; scalar_t__ state; scalar_t__ enc_write_state; } ;
struct TYPE_6__ {TYPE_1__ statem; } ;
typedef TYPE_2__ SSL ;


 scalar_t__ ENC_WRITE_STATE_INVALID ;
 int ERR_LIB_SSL ;
 int ERR_put_error (int ,int,int,char const*,int) ;
 scalar_t__ MSG_FLOW_ERROR ;
 int SSL3_AL_FATAL ;
 int SSL_AD_NO_ALERT ;
 int ssl3_send_alert (TYPE_2__*,int ,int) ;

void ossl_statem_fatal(SSL *s, int al, int func, int reason, const char *file,
                       int line)
{
    ERR_put_error(ERR_LIB_SSL, func, reason, file, line);

    if (s->statem.in_init && s->statem.state == MSG_FLOW_ERROR)
      return;
    s->statem.in_init = 1;
    s->statem.state = MSG_FLOW_ERROR;
    if (al != SSL_AD_NO_ALERT
            && s->statem.enc_write_state != ENC_WRITE_STATE_INVALID)
        ssl3_send_alert(s, SSL3_AL_FATAL, al);
}
