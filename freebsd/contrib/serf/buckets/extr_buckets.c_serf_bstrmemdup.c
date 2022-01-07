
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int memcpy (char*,char const*,int) ;
 char* serf_bucket_mem_alloc (int *,int) ;

char *serf_bstrmemdup(serf_bucket_alloc_t *allocator,
                      const char *str,
                      apr_size_t size)
{
    char *newstr = serf_bucket_mem_alloc(allocator, size + 1);
    memcpy(newstr, str, size);
    newstr[size] = '\0';
    return newstr;
}
