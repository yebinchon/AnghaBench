
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int epoch_time_in_ms; } ;
typedef TYPE_1__ CT_POLICY_EVAL_CTX ;



void CT_POLICY_EVAL_CTX_set_time(CT_POLICY_EVAL_CTX *ctx, uint64_t time_in_ms)
{
    ctx->epoch_time_in_ms = time_in_ms;
}
