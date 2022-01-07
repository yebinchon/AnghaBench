
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* current; scalar_t__ status; scalar_t__ remaining; } ;
typedef TYPE_1__ serf_databuf_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ common_databuf_prep (TYPE_1__*,int*) ;
 int serf_util_readline (char**,scalar_t__*,int,int*) ;

apr_status_t serf_databuf_readline(
    serf_databuf_t *databuf,
    int acceptable,
    int *found,
    const char **data,
    apr_size_t *len)
{
    apr_status_t status = common_databuf_prep(databuf, len);
    if (status)
        return status;


    *data = databuf->current;


    serf_util_readline(&databuf->current, &databuf->remaining, acceptable,
                       found);


    *len = databuf->current - *data;


    return databuf->remaining ? APR_SUCCESS : databuf->status;
}
