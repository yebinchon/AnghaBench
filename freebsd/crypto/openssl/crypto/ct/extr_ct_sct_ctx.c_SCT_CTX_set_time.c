
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int epoch_time_in_ms; } ;
typedef TYPE_1__ SCT_CTX ;



void SCT_CTX_set_time(SCT_CTX *sctx, uint64_t time_in_ms)
{
    sctx->epoch_time_in_ms = time_in_ms;
}
