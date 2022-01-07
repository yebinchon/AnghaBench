
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int * type; int allocator; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int aggregate_context_t ;


 int * create_aggregate (int ) ;
 int serf_bucket_type_aggregate ;

void serf_bucket_aggregate_become(serf_bucket_t *bucket)
{
    aggregate_context_t *ctx;

    ctx = create_aggregate(bucket->allocator);

    bucket->type = &serf_bucket_type_aggregate;
    bucket->data = ctx;


}
