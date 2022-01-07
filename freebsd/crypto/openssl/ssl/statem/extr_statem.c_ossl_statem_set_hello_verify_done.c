
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_init; int hand_state; int state; } ;
struct TYPE_5__ {TYPE_1__ statem; } ;
typedef TYPE_2__ SSL ;


 int MSG_FLOW_UNINITED ;
 int TLS_ST_SR_CLNT_HELLO ;

void ossl_statem_set_hello_verify_done(SSL *s)
{
    s->statem.state = MSG_FLOW_UNINITED;
    s->statem.in_init = 1;







    s->statem.hand_state = TLS_ST_SR_CLNT_HELLO;
}
