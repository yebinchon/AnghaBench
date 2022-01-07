
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int svn_cstring_match_glob_list (char const*,int const*) ;

svn_boolean_t
svn_wc_match_ignore_list(const char *str, const apr_array_header_t *list,
                         apr_pool_t *pool)
{





  return svn_cstring_match_glob_list(str, list);
}
