
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ tv_sec; unsigned int tv_usec; } ;
struct TYPE_11__ {TYPE_1__* d1; } ;
struct TYPE_10__ {int (* timer_cb ) (TYPE_2__*,int ) ;int timeout_duration_us; TYPE_4__ next_timeout; } ;
typedef TYPE_2__ SSL ;


 int BIO_CTRL_DGRAM_SET_NEXT_TIMEOUT ;
 int BIO_ctrl (int ,int ,int ,TYPE_4__*) ;
 scalar_t__ BIO_dgram_is_sctp (int ) ;
 int SSL_get_rbio (TYPE_2__*) ;
 int SSL_get_wbio (TYPE_2__*) ;
 int get_current_time (TYPE_4__*) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (TYPE_2__*,int ) ;

void dtls1_start_timer(SSL *s)
{
    unsigned int sec, usec;



    if (BIO_dgram_is_sctp(SSL_get_wbio(s))) {
        memset(&s->d1->next_timeout, 0, sizeof(s->d1->next_timeout));
        return;
    }






    if (s->d1->next_timeout.tv_sec == 0 && s->d1->next_timeout.tv_usec == 0) {

        if (s->d1->timer_cb != ((void*)0))
            s->d1->timeout_duration_us = s->d1->timer_cb(s, 0);
        else
            s->d1->timeout_duration_us = 1000000;
    }


    get_current_time(&(s->d1->next_timeout));



    sec = s->d1->timeout_duration_us / 1000000;
    usec = s->d1->timeout_duration_us - (sec * 1000000);

    s->d1->next_timeout.tv_sec += sec;
    s->d1->next_timeout.tv_usec += usec;

    if (s->d1->next_timeout.tv_usec >= 1000000) {
        s->d1->next_timeout.tv_sec++;
        s->d1->next_timeout.tv_usec -= 1000000;
    }

    BIO_ctrl(SSL_get_rbio(s), BIO_CTRL_DGRAM_SET_NEXT_TIMEOUT, 0,
             &(s->d1->next_timeout));
}
