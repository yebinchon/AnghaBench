
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ version; } ;
typedef TYPE_1__ serf_status_line ;
struct TYPE_9__ {TYPE_3__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_10__ {scalar_t__ state; TYPE_1__ sl; } ;
typedef TYPE_3__ response_context_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 scalar_t__ STATE_HEADERS ;
 scalar_t__ STATE_STATUS_LINE ;
 int run_machine (TYPE_2__*,TYPE_3__*) ;

apr_status_t serf_bucket_response_status(
    serf_bucket_t *bkt,
    serf_status_line *sline)
{
    response_context_t *ctx = bkt->data;
    apr_status_t status;

    if (ctx->state != STATE_STATUS_LINE) {

        *sline = ctx->sl;
        return APR_SUCCESS;
    }







    status = run_machine(bkt, ctx);
    if (ctx->state == STATE_HEADERS) {
        *sline = ctx->sl;
    }
    else {

        sline->version = 0;
    }

    return status;
}
