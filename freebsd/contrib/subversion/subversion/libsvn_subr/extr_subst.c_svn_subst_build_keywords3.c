
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int TRUE ;
 int build_keywords (int **,int ,char const*,char const*,char const*,char const*,int ,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_subst_build_keywords3(apr_hash_t **kw,
                          const char *keywords_val,
                          const char *rev,
                          const char *url,
                          const char *repos_root_url,
                          apr_time_t date,
                          const char *author,
                          apr_pool_t *pool)
{
  return svn_error_trace(build_keywords(kw, TRUE, keywords_val,
                                        rev, url, repos_root_url,
                                        date, author, pool));
}
