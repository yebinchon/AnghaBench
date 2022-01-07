
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allocator; } ;
typedef TYPE_1__ serf_bucket_t ;


 int serf_bucket_mem_free (int ,TYPE_1__*) ;
 int serf_debug__bucket_destroy (TYPE_1__*) ;

void serf_default_destroy(serf_bucket_t *bucket)
{




    serf_bucket_mem_free(bucket->allocator, bucket);
}
