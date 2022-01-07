
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int FALSE ;
 int * repos_notify_handler ;
 int * svn_repos_load_fs3 (int *,int *,int,char const*,int ,int ,int ,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_repos_load_fs2(svn_repos_t *repos,
                   svn_stream_t *dumpstream,
                   svn_stream_t *feedback_stream,
                   enum svn_repos_load_uuid uuid_action,
                   const char *parent_dir,
                   svn_boolean_t use_pre_commit_hook,
                   svn_boolean_t use_post_commit_hook,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  return svn_repos_load_fs3(repos, dumpstream, uuid_action, parent_dir,
                            use_pre_commit_hook, use_post_commit_hook, FALSE,
                            feedback_stream ? repos_notify_handler : ((void*)0),
                            feedback_stream, cancel_func, cancel_baton, pool);
}
