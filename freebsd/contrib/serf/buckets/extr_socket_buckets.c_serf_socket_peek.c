
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int databuf; } ;
typedef TYPE_1__ socket_context_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int serf_databuf_peek (int *,char const**,int *) ;

__attribute__((used)) static apr_status_t serf_socket_peek(serf_bucket_t *bucket,
                                     const char **data,
                                     apr_size_t *len)
{
    socket_context_t *ctx = bucket->data;

    return serf_databuf_peek(&ctx->databuf, data, len);
}
