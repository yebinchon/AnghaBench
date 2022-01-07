
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;


 int serf_default_destroy_and_data (int *) ;

__attribute__((used)) static void serf_barrier_destroy(serf_bucket_t *bucket)
{






    serf_default_destroy_and_data(bucket);
}
