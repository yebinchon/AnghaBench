
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_utf__cstring_from_utf8_fuzzy (char const*,int *,int ) ;
 int svn_utf_cstring_from_utf8 ;

const char *
svn_utf_cstring_from_utf8_fuzzy(const char *src,
                                apr_pool_t *pool)
{
  return svn_utf__cstring_from_utf8_fuzzy(src, pool,
                                          svn_utf_cstring_from_utf8);
}
