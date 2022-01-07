
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_12__ {int local_abspath; struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef TYPE_2__ svn_client_conflict_t ;
struct TYPE_13__ {int id; } ;
typedef TYPE_3__ svn_client_conflict_option_t ;
typedef int svn_boolean_t ;
struct conflict_tree_incoming_delete_details {scalar_t__ deleted_rev; scalar_t__ added_rev; char const* repos_relpath; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_client_conflict_get_incoming_old_repos_location (char const**,int *,int *,TYPE_2__*,int *,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_get_operation (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_tree_get_victim_node_kind (TYPE_2__*) ;
 int svn_dirent_local_style (char const*,int *) ;
 char const* svn_dirent_skip_ancestor (char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_kind_to_word (scalar_t__) ;
 int svn_wc__get_wcroot (char const**,int ,char const*,int *,int *) ;
 int svn_wc__node_get_origin (int *,scalar_t__*,char const**,int *,int *,int *,int *,int ,char const*,int ,int *,int *) ;
 scalar_t__ svn_wc_operation_merge ;
 scalar_t__ svn_wc_operation_switch ;
 scalar_t__ svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
verify_local_state_for_incoming_delete(svn_client_conflict_t *conflict,
                                       svn_client_conflict_option_t *option,
                                        svn_client_ctx_t *ctx,
                                       apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  const char *wcroot_abspath;
  svn_wc_operation_t operation;

  local_abspath = svn_client_conflict_get_local_abspath(conflict);
  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, ctx->wc_ctx,
                             local_abspath, scratch_pool,
                             scratch_pool));
  operation = svn_client_conflict_get_operation(conflict);

  if (operation == svn_wc_operation_update ||
      operation == svn_wc_operation_switch)
    {
      struct conflict_tree_incoming_delete_details *details;
      svn_boolean_t is_copy;
      svn_revnum_t copyfrom_rev;
      const char *copyfrom_repos_relpath;

      details = conflict->tree_conflict_incoming_details;
      if (details == ((void*)0))
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                 _("Conflict resolution option '%d' requires "
                                   "details for tree conflict at '%s' to be "
                                   "fetched from the repository."),
                                option->id,
                                svn_dirent_local_style(local_abspath,
                                                       scratch_pool));




      SVN_ERR(svn_wc__node_get_origin(&is_copy, &copyfrom_rev,
                                      &copyfrom_repos_relpath,
                                      ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                      ctx->wc_ctx, local_abspath, FALSE,
                                      scratch_pool, scratch_pool));
      if (!is_copy)
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                 _("Cannot resolve tree conflict on '%s' "
                                   "(expected a copied item, but the item "
                                   "is not a copy)"),
                                 svn_dirent_local_style(
                                   svn_dirent_skip_ancestor(
                                     wcroot_abspath,
                                     conflict->local_abspath),
                                 scratch_pool));
      else if (details->deleted_rev == SVN_INVALID_REVNUM &&
               details->added_rev == SVN_INVALID_REVNUM)
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                 _("Could not find the revision in which '%s' "
                                   "was deleted from the repository"),
                                 svn_dirent_local_style(
                                   svn_dirent_skip_ancestor(
                                     wcroot_abspath,
                                     conflict->local_abspath),
                                   scratch_pool));
      else if (details->deleted_rev != SVN_INVALID_REVNUM &&
               copyfrom_rev >= details->deleted_rev)
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                 _("Cannot resolve tree conflict on '%s' "
                                   "(expected an item copied from a revision "
                                   "smaller than r%ld, but the item was "
                                   "copied from r%ld)"),
                                 svn_dirent_local_style(
                                   svn_dirent_skip_ancestor(
                                     wcroot_abspath, conflict->local_abspath),
                                   scratch_pool),
                                 details->deleted_rev, copyfrom_rev);

      else if (details->added_rev != SVN_INVALID_REVNUM &&
               copyfrom_rev < details->added_rev)
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                 _("Cannot resolve tree conflict on '%s' "
                                   "(expected an item copied from a revision "
                                   "larger than r%ld, but the item was "
                                   "copied from r%ld)"),
                                 svn_dirent_local_style(
                                   svn_dirent_skip_ancestor(
                                     wcroot_abspath, conflict->local_abspath),
                                   scratch_pool),
                                  details->added_rev, copyfrom_rev);
      else if (operation == svn_wc_operation_update)
        {
          const char *old_repos_relpath;

          SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                    &old_repos_relpath, ((void*)0), ((void*)0), conflict,
                    scratch_pool, scratch_pool));
          if (strcmp(copyfrom_repos_relpath, details->repos_relpath) != 0 &&
              strcmp(copyfrom_repos_relpath, old_repos_relpath) != 0)
            return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                     _("Cannot resolve tree conflict on '%s' "
                                       "(expected an item copied from '^/%s' "
                                       "or from '^/%s' but the item was "
                                       "copied from '^/%s@%ld')"),
                                     svn_dirent_local_style(
                                       svn_dirent_skip_ancestor(
                                         wcroot_abspath, conflict->local_abspath),
                                       scratch_pool),
                                     details->repos_relpath,
                                     old_repos_relpath,
                                     copyfrom_repos_relpath, copyfrom_rev);
        }
      else if (operation == svn_wc_operation_switch)
        {
          const char *old_repos_relpath;

          SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                    &old_repos_relpath, ((void*)0), ((void*)0), conflict,
                    scratch_pool, scratch_pool));

          if (strcmp(copyfrom_repos_relpath, old_repos_relpath) != 0)
            return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                     _("Cannot resolve tree conflict on '%s' "
                                       "(expected an item copied from '^/%s', "
                                       "but the item was copied from "
                                        "'^/%s@%ld')"),
                                     svn_dirent_local_style(
                                       svn_dirent_skip_ancestor(
                                         wcroot_abspath,
                                         conflict->local_abspath),
                                       scratch_pool),
                                     old_repos_relpath,
                                     copyfrom_repos_relpath, copyfrom_rev);
        }
    }
  else if (operation == svn_wc_operation_merge)
    {
      svn_node_kind_t victim_node_kind;
      svn_node_kind_t on_disk_kind;


      victim_node_kind =
        svn_client_conflict_tree_get_victim_node_kind(conflict);
      SVN_ERR(svn_io_check_path(local_abspath, &on_disk_kind, scratch_pool));

      if (victim_node_kind != on_disk_kind)
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                 _("Cannot resolve tree conflict on '%s' "
                                   "(expected node kind '%s' but found '%s')"),
                                 svn_dirent_local_style(
                                   svn_dirent_skip_ancestor(
                                     wcroot_abspath, conflict->local_abspath),
                                   scratch_pool),
                                 svn_node_kind_to_word(victim_node_kind),
                                 svn_node_kind_to_word(on_disk_kind));
    }

  return SVN_NO_ERROR;
}
