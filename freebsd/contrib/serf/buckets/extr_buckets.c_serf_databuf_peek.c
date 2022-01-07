
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* current; int status; int remaining; } ;
typedef TYPE_1__ serf_databuf_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;


 scalar_t__ APR_EOF ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ common_databuf_prep (TYPE_1__*,int *) ;

apr_status_t serf_databuf_peek(
    serf_databuf_t *databuf,
    const char **data,
    apr_size_t *len)
{
    apr_status_t status = common_databuf_prep(databuf, len);
    if (status)
        return status;


    *data = databuf->current;
    *len = databuf->remaining;





    if (APR_STATUS_IS_EOF(databuf->status))
        return APR_EOF;
    return APR_SUCCESS;
}
