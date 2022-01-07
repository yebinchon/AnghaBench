
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_INT64_BUFFER_SIZE ;
 char* apr_pstrdup (int *,char*) ;
 int ui64toa_sep (int ,char,char*) ;

char *
svn__ui64toa_sep(apr_uint64_t number, char separator, apr_pool_t *pool)
{
  char buffer[2 * SVN_INT64_BUFFER_SIZE];
  ui64toa_sep(number, separator, buffer);

  return apr_pstrdup(pool, buffer);
}
