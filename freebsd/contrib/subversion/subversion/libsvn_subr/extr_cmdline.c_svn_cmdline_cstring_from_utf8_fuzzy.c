
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int svn_cmdline_cstring_from_utf8 ;
 char const* svn_utf__cstring_from_utf8_fuzzy (char const*,int *,int ) ;

const char *
svn_cmdline_cstring_from_utf8_fuzzy(const char *src,
                                    apr_pool_t *pool)
{
  return svn_utf__cstring_from_utf8_fuzzy(src, pool,
                                          svn_cmdline_cstring_from_utf8);
}
