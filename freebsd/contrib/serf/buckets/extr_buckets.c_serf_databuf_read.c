
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ remaining; char* current; scalar_t__ status; } ;
typedef TYPE_1__ serf_databuf_t ;
typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ SERF_READ_ALL_AVAIL ;
 scalar_t__ common_databuf_prep (TYPE_1__*,scalar_t__*) ;

apr_status_t serf_databuf_read(
    serf_databuf_t *databuf,
    apr_size_t requested,
    const char **data,
    apr_size_t *len)
{
    apr_status_t status = common_databuf_prep(databuf, len);
    if (status)
        return status;


    if (requested == SERF_READ_ALL_AVAIL || requested > databuf->remaining)
        requested = databuf->remaining;


    *data = databuf->current;
    *len = requested;


    databuf->current += requested;
    databuf->remaining -= requested;






    return databuf->remaining ? APR_SUCCESS : databuf->status;
}
