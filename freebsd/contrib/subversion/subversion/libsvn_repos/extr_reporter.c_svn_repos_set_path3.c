
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int write_path_info (void*,char const*,int *,int ,int ,int ,char const*,int *) ;

svn_error_t *
svn_repos_set_path3(void *baton, const char *path, svn_revnum_t rev,
                    svn_depth_t depth, svn_boolean_t start_empty,
                    const char *lock_token, apr_pool_t *pool)
{
  return svn_error_trace(
            write_path_info(baton, path, ((void*)0), rev, depth, start_empty,
                            lock_token, pool));
}
