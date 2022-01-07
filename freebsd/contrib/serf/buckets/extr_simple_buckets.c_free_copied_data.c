
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serf_bucket_mem_free (void*,char*) ;

__attribute__((used)) static void free_copied_data(void *baton, const char *data)
{
    serf_bucket_mem_free(baton, (char*)data);
}
