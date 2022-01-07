
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * respool; } ;
typedef TYPE_1__ serf_request_t ;
typedef int apr_pool_t ;



apr_pool_t *serf_request_get_pool(const serf_request_t *request)
{
    return request->respool;
}
