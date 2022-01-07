
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_mmap_t ;



serf_bucket_t *serf_bucket_mmap_create(apr_mmap_t *file_mmap,
                                       serf_bucket_alloc_t *allocator)
{
    return ((void*)0);
}
