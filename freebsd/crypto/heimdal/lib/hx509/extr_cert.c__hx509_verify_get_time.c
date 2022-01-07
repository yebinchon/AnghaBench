
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef TYPE_1__* hx509_verify_ctx ;
struct TYPE_3__ {int time_now; } ;



time_t
_hx509_verify_get_time(hx509_verify_ctx ctx)
{
    return ctx->time_now;
}
