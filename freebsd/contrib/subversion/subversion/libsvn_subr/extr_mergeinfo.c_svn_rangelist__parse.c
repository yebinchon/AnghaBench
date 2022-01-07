
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_merge_range_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 int parse_rangelist (char const**,char const*,int *,int *) ;
 int strlen (char const*) ;

svn_error_t *
svn_rangelist__parse(svn_rangelist_t **rangelist,
                     const char *str,
                     apr_pool_t *result_pool)
{
  const char *s = str;

  *rangelist = apr_array_make(result_pool, 1, sizeof(svn_merge_range_t *));
  SVN_ERR(parse_rangelist(&s, s + strlen(s), *rangelist, result_pool));
  return SVN_NO_ERROR;
}
