
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int TRUE ;
 char* svn_cstring_join2 (int const*,char const*,int ,int *) ;

char *
svn_cstring_join(const apr_array_header_t *strings,
                 const char *separator,
                 apr_pool_t *pool)
{
  return svn_cstring_join2(strings, separator, TRUE, pool);
}
