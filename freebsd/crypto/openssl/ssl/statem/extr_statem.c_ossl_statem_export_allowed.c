
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hand_state; } ;
struct TYPE_7__ {TYPE_2__ statem; TYPE_1__* s3; } ;
struct TYPE_5__ {scalar_t__ previous_server_finished_len; } ;
typedef TYPE_3__ SSL ;


 scalar_t__ TLS_ST_SW_FINISHED ;

int ossl_statem_export_allowed(SSL *s)
{
    return s->s3->previous_server_finished_len != 0
           && s->statem.hand_state != TLS_ST_SW_FINISHED;
}
