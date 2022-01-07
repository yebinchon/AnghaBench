
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ response_context_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ STATE_BODY ;
 scalar_t__ run_machine (int *,TYPE_1__*) ;

__attribute__((used)) static apr_status_t wait_for_body(serf_bucket_t *bkt, response_context_t *ctx)
{
    apr_status_t status;


    while (ctx->state != STATE_BODY) {
        status = run_machine(bkt, ctx);




        if (status)
            return status;
    }


    return APR_SUCCESS;
}
