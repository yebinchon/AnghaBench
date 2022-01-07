
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int * svn_repos_load_fs4 (int *,int *,int ,int ,int,char const*,int ,int ,int ,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_repos_load_fs3(svn_repos_t *repos,
                   svn_stream_t *dumpstream,
                   enum svn_repos_load_uuid uuid_action,
                   const char *parent_dir,
                   svn_boolean_t use_pre_commit_hook,
                   svn_boolean_t use_post_commit_hook,
                   svn_boolean_t validate_props,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  return svn_repos_load_fs4(repos, dumpstream,
                            SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
                            uuid_action, parent_dir,
                            use_pre_commit_hook, use_post_commit_hook,
                            validate_props, notify_func, notify_baton,
                            cancel_func, cancel_baton, pool);
}
