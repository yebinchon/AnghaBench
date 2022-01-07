
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_alloc_t ;
typedef scalar_t__ apr_size_t ;


 int memcpy (char*,char const*,scalar_t__) ;
 char* serf_bucket_mem_alloc (int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

char *serf_bstrdup(serf_bucket_alloc_t *allocator,
                   const char *str)
{
    apr_size_t size = strlen(str) + 1;
    char *newstr = serf_bucket_mem_alloc(allocator, size);
    memcpy(newstr, str, size);
    return newstr;
}
