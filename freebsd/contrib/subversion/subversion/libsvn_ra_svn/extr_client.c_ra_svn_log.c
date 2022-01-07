
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_log_entry_receiver_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int ensure_exact_server_parent (int *,int *) ;
 int perform_ra_svn_log (int **,int *,int const*,int ,int ,int,int ,int ,int ,int const*,int ,void*,int *) ;
 int * reparent_path_array (int *,int const*,int *) ;
 int svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_log(svn_ra_session_t *session,
           const apr_array_header_t *paths,
           svn_revnum_t start, svn_revnum_t end,
           int limit,
           svn_boolean_t discover_changed_paths,
           svn_boolean_t strict_node_history,
           svn_boolean_t include_merged_revisions,
           const apr_array_header_t *revprops,
           svn_log_entry_receiver_t receiver,
           void *receiver_baton, apr_pool_t *pool)
{
  svn_error_t *outer_error = ((void*)0);
  svn_error_t *err;






  if (paths)
    paths = reparent_path_array(session, paths, pool);
  else
    SVN_ERR(ensure_exact_server_parent(session, pool));

  err = svn_error_trace(perform_ra_svn_log(&outer_error,
                                           session, paths,
                                           start, end,
                                           limit,
                                           discover_changed_paths,
                                           strict_node_history,
                                           include_merged_revisions,
                                           revprops,
                                           receiver, receiver_baton,
                                           pool));
  return svn_error_trace(
            svn_error_compose_create(outer_error,
                                     err));
}
