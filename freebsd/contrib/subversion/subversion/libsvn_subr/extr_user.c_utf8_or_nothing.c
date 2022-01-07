
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int svn_error_clear (int *) ;
 int * svn_utf_cstring_to_utf8 (char const**,char const*,int *) ;

__attribute__((used)) static const char *
utf8_or_nothing(const char *str, apr_pool_t *pool) {
  if (str)
    {
      const char *utf8_str;
      svn_error_t *err = svn_utf_cstring_to_utf8(&utf8_str, str, pool);
      if (! err)
        return utf8_str;
      svn_error_clear(err);
    }
  return ((void*)0);
}
