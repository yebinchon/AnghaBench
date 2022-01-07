
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pollset; } ;
typedef TYPE_1__ serf_pollset_t ;
typedef int serf_io_baton_t ;
struct TYPE_10__ {scalar_t__ pollset_baton; } ;
typedef TYPE_2__ serf_context_t ;
typedef int apr_status_t ;
typedef int apr_short_interval_time_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int * client_data; } ;
typedef TYPE_3__ apr_pollfd_t ;
typedef int apr_int32_t ;


 scalar_t__ APR_STATUS_IS_EINTR (int ) ;
 scalar_t__ APR_STATUS_IS_TIMEUP (int ) ;
 int APR_SUCCESS ;
 int APR_TIMEUP ;
 int apr_pollset_poll (int ,int ,int *,TYPE_3__ const**) ;
 int serf_context_prerun (TYPE_2__*) ;
 int serf_event_trigger (TYPE_2__*,int *,TYPE_3__ const*) ;

apr_status_t serf_context_run(
    serf_context_t *ctx,
    apr_short_interval_time_t duration,
    apr_pool_t *pool)
{
    apr_status_t status;
    apr_int32_t num;
    const apr_pollfd_t *desc;
    serf_pollset_t *ps = (serf_pollset_t*)ctx->pollset_baton;

    if ((status = serf_context_prerun(ctx)) != APR_SUCCESS) {
        return status;
    }

    if ((status = apr_pollset_poll(ps->pollset, duration, &num,
                                   &desc)) != APR_SUCCESS) {


        if (APR_STATUS_IS_EINTR(status))
            return APR_SUCCESS;
        if (APR_STATUS_IS_TIMEUP(status))
            return APR_TIMEUP;
        return status;
    }

    while (num--) {
        serf_io_baton_t *io = desc->client_data;

        status = serf_event_trigger(ctx, io, desc);
        if (status) {
            return status;
        }

        desc++;
    }

    return APR_SUCCESS;
}
