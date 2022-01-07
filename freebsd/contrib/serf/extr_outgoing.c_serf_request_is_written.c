
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_bkt; scalar_t__ writing_started; } ;
typedef TYPE_1__ serf_request_t ;
typedef int apr_status_t ;


 int APR_EBUSY ;
 int APR_SUCCESS ;

apr_status_t serf_request_is_written(serf_request_t *request)
{
    if (request->writing_started && !request->req_bkt)
        return APR_SUCCESS;

    return APR_EBUSY;
}
