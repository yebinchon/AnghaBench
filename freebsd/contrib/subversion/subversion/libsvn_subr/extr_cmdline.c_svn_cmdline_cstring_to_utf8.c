
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * input_encoding ;
 int * svn_utf_cstring_to_utf8 (char const**,char const*,int *) ;
 int * svn_utf_cstring_to_utf8_ex2 (char const**,char const*,int *,int *) ;

svn_error_t *
svn_cmdline_cstring_to_utf8(const char **dest,
                            const char *src,
                            apr_pool_t *pool)
{





  return svn_utf_cstring_to_utf8(dest, src, pool);
}
