
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_log_entry_receiver_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {void* inner_baton; int inner; int * changes; int * changes_pool; } ;
typedef TYPE_1__ log_entry_receiver_baton_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int log4_entry_receiver ;
 int * log4_path_change_receiver ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos_get_logs5 (int *,int const*,int ,int ,int,scalar_t__,scalar_t__,int const*,int ,void*,int *,TYPE_1__*,int ,TYPE_1__*,int *) ;

svn_error_t *
svn_repos__get_logs_compat(svn_repos_t *repos,
                           const apr_array_header_t *paths,
                           svn_revnum_t start,
                           svn_revnum_t end,
                           int limit,
                           svn_boolean_t discover_changed_paths,
                           svn_boolean_t strict_node_history,
                           svn_boolean_t include_merged_revisions,
                           const apr_array_header_t *revprops,
                           svn_repos_authz_func_t authz_read_func,
                           void *authz_read_baton,
                           svn_log_entry_receiver_t receiver,
                           void *receiver_baton,
                           apr_pool_t *pool)
{
  apr_pool_t *changes_pool = svn_pool_create(pool);

  log_entry_receiver_baton_t baton;
  baton.changes_pool = changes_pool;
  baton.changes = ((void*)0);
  baton.inner = receiver;
  baton.inner_baton = receiver_baton;

  SVN_ERR(svn_repos_get_logs5(repos, paths, start, end, limit,
                              strict_node_history,
                              include_merged_revisions,
                              revprops,
                              authz_read_func, authz_read_baton,
                              discover_changed_paths
                                ? log4_path_change_receiver
                                : ((void*)0),
                              &baton,
                              log4_entry_receiver, &baton,
                              pool));

  svn_pool_destroy(changes_pool);
  return SVN_NO_ERROR;
}
