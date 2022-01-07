
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * allocator; } ;
typedef TYPE_1__ serf_request_t ;
typedef int serf_bucket_alloc_t ;



serf_bucket_alloc_t *serf_request_get_alloc(
    const serf_request_t *request)
{
    return request->allocator;
}
