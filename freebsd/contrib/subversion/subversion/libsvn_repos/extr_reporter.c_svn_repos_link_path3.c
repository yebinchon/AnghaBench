
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_REPOS_BAD_ARGS ;
 int _ (char*) ;
 scalar_t__ svn_depth_exclude ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int write_path_info (void*,char const*,char const*,int ,scalar_t__,int ,char const*,int *) ;

svn_error_t *
svn_repos_link_path3(void *baton, const char *path, const char *link_path,
                     svn_revnum_t rev, svn_depth_t depth,
                     svn_boolean_t start_empty,
                     const char *lock_token, apr_pool_t *pool)
{
  if (depth == svn_depth_exclude)
    return svn_error_create(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                            _("Depth 'exclude' not supported for link"));

  return svn_error_trace(
            write_path_info(baton, path, link_path, rev, depth,
                            start_empty, lock_token, pool));
}
