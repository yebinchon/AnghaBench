
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; scalar_t__ remaining; int buf; int current; int read_baton; int (* read ) (int ,int,int ,scalar_t__*) ;} ;
typedef TYPE_1__ serf_databuf_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int APR_SUCCESS ;
 scalar_t__ SERF_BUCKET_READ_ERROR (int ) ;
 int stub1 (int ,int,int ,scalar_t__*) ;

__attribute__((used)) static apr_status_t common_databuf_prep(serf_databuf_t *databuf,
                                        apr_size_t *len)
{
    apr_size_t readlen;
    apr_status_t status;


    if (databuf->remaining > 0)
        return APR_SUCCESS;


    if (APR_STATUS_IS_EOF(databuf->status)) {

        *len = 0;
        return APR_EOF;
    }


    status = (*databuf->read)(databuf->read_baton, sizeof(databuf->buf),
                              databuf->buf, &readlen);
    if (SERF_BUCKET_READ_ERROR(status)) {
        return status;
    }

    databuf->current = databuf->buf;
    databuf->remaining = readlen;
    databuf->status = status;

    return APR_SUCCESS;
}
