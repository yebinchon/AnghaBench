
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_utf_cstring_to_utf8_ex2 (char const**,char const*,char const*,int *) ;

svn_error_t *
svn_utf_cstring_to_utf8_ex(const char **dest,
                           const char *src,
                           const char *frompage,
                           const char *convset_key,
                           apr_pool_t *pool)
{
  return svn_utf_cstring_to_utf8_ex2(dest, src, frompage, pool);
}
