
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* type; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int apr_off_t ;
struct TYPE_9__ {scalar_t__ numtrailers; int numheaders; int headers; } ;
typedef TYPE_3__ apr_hdtr_t ;
typedef int apr_file_t ;
struct TYPE_7__ {int (* read_iovec ) (TYPE_2__*,int ,int ,int ,int *) ;} ;


 int stub1 (TYPE_2__*,int ,int ,int ,int *) ;

apr_status_t serf_default_read_for_sendfile(
    serf_bucket_t *bucket,
    apr_size_t requested,
    apr_hdtr_t *hdtr,
    apr_file_t **file,
    apr_off_t *offset,
    apr_size_t *len)
{





    apr_status_t status = bucket->type->read_iovec(bucket, requested,
                                                   hdtr->numheaders,
                                                   hdtr->headers,
                                                   &hdtr->numheaders);


    *file = ((void*)0);
    hdtr->numtrailers = 0;

    return status;
}
