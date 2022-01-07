
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_resolution_option (int *,int *,int ,int ,int ,int ) ;
 int * apr_array_make (int *,int,int) ;
 int assert_tree_conflict (int *,int *) ;
 int configure_option_accept_current_wc_state (int *,int *) ;
 int configure_option_incoming_add_ignore (int *,int *,int *,int *) ;
 int configure_option_incoming_added_dir_merge (int *,int *,int *,int *) ;
 int configure_option_incoming_added_dir_replace (int *,int *,int *,int *) ;
 int configure_option_incoming_added_dir_replace_and_merge (int *,int *,int *,int *) ;
 int configure_option_incoming_added_file_replace_and_merge (int *,int *,int *,int *) ;
 int configure_option_incoming_added_file_text_merge (int *,int *,int *,int *) ;
 int configure_option_incoming_delete_accept (int *,int *,int *,int *) ;
 int configure_option_incoming_delete_ignore (int *,int *,int *,int *) ;
 int configure_option_incoming_dir_merge (int *,int *,int *,int *) ;
 int configure_option_incoming_move_file_merge (int *,int *,int *,int *) ;
 int configure_option_local_move_file_merge (int *,int *,int *,int *) ;
 int configure_option_update_move_destination (int *,int *) ;
 int configure_option_update_raise_moved_away_children (int *,int *) ;
 int resolve_postpone ;
 int svn_client_conflict_option_postpone ;

svn_error_t *
svn_client_conflict_tree_get_resolution_options(apr_array_header_t **options,
                                                svn_client_conflict_t *conflict,
                                                svn_client_ctx_t *ctx,
                                                apr_pool_t *result_pool,
                                                apr_pool_t *scratch_pool)
{
  SVN_ERR(assert_tree_conflict(conflict, scratch_pool));

  *options = apr_array_make(result_pool, 2,
                            sizeof(svn_client_conflict_option_t *));


  add_resolution_option(*options, conflict,
                        svn_client_conflict_option_postpone,
                        _("Postpone"),
                        _("skip this conflict and leave it unresolved"),
                        resolve_postpone);


  SVN_ERR(configure_option_accept_current_wc_state(conflict, *options));


  SVN_ERR(configure_option_update_move_destination(conflict, *options));
  SVN_ERR(configure_option_update_raise_moved_away_children(conflict,
                                                            *options));
  SVN_ERR(configure_option_incoming_add_ignore(conflict, ctx, *options,
                                               scratch_pool));
  SVN_ERR(configure_option_incoming_added_file_text_merge(conflict, ctx,
                                                          *options,
                                                          scratch_pool));
  SVN_ERR(configure_option_incoming_added_file_replace_and_merge(conflict,
                                                                 ctx,
                                                                 *options,
                                                                 scratch_pool));
  SVN_ERR(configure_option_incoming_added_dir_merge(conflict, ctx,
                                                    *options,
                                                    scratch_pool));
  SVN_ERR(configure_option_incoming_added_dir_replace(conflict, ctx,
                                                      *options,
                                                      scratch_pool));
  SVN_ERR(configure_option_incoming_added_dir_replace_and_merge(conflict,
                                                                ctx,
                                                                *options,
                                                                scratch_pool));
  SVN_ERR(configure_option_incoming_delete_ignore(conflict, ctx, *options,
                                                  scratch_pool));
  SVN_ERR(configure_option_incoming_delete_accept(conflict, ctx, *options,
                                                  scratch_pool));
  SVN_ERR(configure_option_incoming_move_file_merge(conflict, ctx, *options,
                                                    scratch_pool));
  SVN_ERR(configure_option_incoming_dir_merge(conflict, ctx, *options,
                                              scratch_pool));
  SVN_ERR(configure_option_local_move_file_merge(conflict, ctx, *options,
                                                 scratch_pool));

  return SVN_NO_ERROR;
}
