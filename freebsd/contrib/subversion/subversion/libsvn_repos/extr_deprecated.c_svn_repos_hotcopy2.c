
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_repos_hotcopy3 (char const*,char const*,int ,int ,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_repos_hotcopy2(const char *src_path,
                   const char *dst_path,
                   svn_boolean_t clean_logs,
                   svn_boolean_t incremental,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  return svn_error_trace(svn_repos_hotcopy3(src_path, dst_path, clean_logs,
                                            incremental, ((void*)0), ((void*)0),
                                            cancel_func, cancel_baton, pool));
}
