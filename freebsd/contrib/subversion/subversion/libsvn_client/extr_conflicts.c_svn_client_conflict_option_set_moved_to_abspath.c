
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_9__ {int pool; struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef TYPE_1__ svn_client_conflict_t ;
struct TYPE_10__ {int description; TYPE_1__* conflict; } ;
typedef TYPE_2__ svn_client_conflict_option_t ;
struct conflict_tree_incoming_delete_details {int wc_move_target_idx; int * wc_move_targets; } ;
typedef int apr_pool_t ;
struct TYPE_11__ {int nelts; } ;
typedef TYPE_3__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int describe_incoming_move_merge_conflict_option (int *,TYPE_1__*,int *,struct conflict_tree_incoming_delete_details*,int ,int *) ;
 int get_moved_to_repos_relpath (struct conflict_tree_incoming_delete_details*,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_1__*) ;
 scalar_t__ svn_client_conflict_option_get_id (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_option_incoming_move_dir_merge ;
 scalar_t__ svn_client_conflict_option_incoming_move_file_text_merge ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int,...) ;
 TYPE_3__* svn_hash_gets (int *,int ) ;

svn_error_t *
svn_client_conflict_option_set_moved_to_abspath(
  svn_client_conflict_option_t *option,
  int preferred_move_target_idx,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  svn_client_conflict_t *conflict = option->conflict;
  struct conflict_tree_incoming_delete_details *details;
  const char *victim_abspath;
  apr_array_header_t *move_target_wc_abspaths;

  SVN_ERR_ASSERT(svn_client_conflict_option_get_id(option) ==
                 svn_client_conflict_option_incoming_move_file_text_merge ||
                 svn_client_conflict_option_get_id(option) ==
                 svn_client_conflict_option_incoming_move_dir_merge);

  victim_abspath = svn_client_conflict_get_local_abspath(conflict);
  details = conflict->tree_conflict_incoming_details;
  if (details == ((void*)0) || details->wc_move_targets == ((void*)0))
    return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                             _("Setting a move target requires details "
                               "for tree conflict at '%s' to be fetched "
                               "from the repository first"),
                            svn_dirent_local_style(victim_abspath,
                                                   scratch_pool));

  move_target_wc_abspaths =
    svn_hash_gets(details->wc_move_targets,
                  get_moved_to_repos_relpath(details, scratch_pool));

  if (preferred_move_target_idx < 0 ||
      preferred_move_target_idx > move_target_wc_abspaths->nelts)
    return svn_error_createf(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                             _("Index '%d' is out of bounds of the possible "
                               "move target list for '%s'"),
                            preferred_move_target_idx,
                            svn_dirent_local_style(victim_abspath,
                                                   scratch_pool));


  details->wc_move_target_idx = preferred_move_target_idx;


  SVN_ERR(describe_incoming_move_merge_conflict_option(&option->description,
                                                       conflict, ctx,
                                                       details,
                                                       conflict->pool,
                                                       scratch_pool));
  return SVN_NO_ERROR;
}
