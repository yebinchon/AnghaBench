
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int memset (void*,int ,int ) ;
 void* serf_bucket_mem_alloc (int *,int ) ;

void *serf_bucket_mem_calloc(
    serf_bucket_alloc_t *allocator,
    apr_size_t size)
{
    void *mem;
    mem = serf_bucket_mem_alloc(allocator, size);
    if (mem == ((void*)0))
        return ((void*)0);
    memset(mem, 0, size);
    return mem;
}
