
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int memcpy (void*,void const*,int ) ;
 void* serf_bucket_mem_alloc (int *,int ) ;

void *serf_bmemdup(serf_bucket_alloc_t *allocator,
                   const void *mem,
                   apr_size_t size)
{
    void *newmem = serf_bucket_mem_alloc(allocator, size);
    memcpy(newmem, mem, size);
    return newmem;
}
