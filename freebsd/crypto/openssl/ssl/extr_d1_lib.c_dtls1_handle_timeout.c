
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* d1; } ;
struct TYPE_11__ {int read_timeouts; } ;
struct TYPE_12__ {TYPE_1__ timeout; int timeout_duration_us; int (* timer_cb ) (TYPE_3__*,int ) ;} ;
typedef TYPE_3__ SSL ;


 int DTLS1_TMO_READ_COUNT ;
 scalar_t__ dtls1_check_timeout_num (TYPE_3__*) ;
 int dtls1_double_timeout (TYPE_3__*) ;
 int dtls1_is_timer_expired (TYPE_3__*) ;
 int dtls1_retransmit_buffered_messages (TYPE_3__*) ;
 int dtls1_start_timer (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int ) ;

int dtls1_handle_timeout(SSL *s)
{

    if (!dtls1_is_timer_expired(s)) {
        return 0;
    }

    if (s->d1->timer_cb != ((void*)0))
        s->d1->timeout_duration_us = s->d1->timer_cb(s, s->d1->timeout_duration_us);
    else
        dtls1_double_timeout(s);

    if (dtls1_check_timeout_num(s) < 0) {

        return -1;
    }

    s->d1->timeout.read_timeouts++;
    if (s->d1->timeout.read_timeouts > DTLS1_TMO_READ_COUNT) {
        s->d1->timeout.read_timeouts = 1;
    }

    dtls1_start_timer(s);

    return dtls1_retransmit_buffered_messages(s);
}
