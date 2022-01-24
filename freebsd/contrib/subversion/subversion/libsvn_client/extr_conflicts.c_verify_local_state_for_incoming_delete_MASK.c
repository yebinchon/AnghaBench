#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_operation_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/  local_abspath; struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
struct TYPE_13__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct conflict_tree_incoming_delete_details {scalar_t__ deleted_rev; scalar_t__ added_rev; char const* repos_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_operation_merge ; 
 scalar_t__ svn_wc_operation_switch ; 
 scalar_t__ svn_wc_operation_update ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_client_conflict_t *conflict,
                                       svn_client_conflict_option_t *option,
                                        svn_client_ctx_t *ctx,
                                       apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  const char *wcroot_abspath;
  svn_wc_operation_t operation;

  local_abspath = FUNC4(conflict);
  FUNC0(FUNC12(&wcroot_abspath, ctx->wc_ctx,
                             local_abspath, scratch_pool,
                             scratch_pool));
  operation = FUNC5(conflict);

  if (operation == svn_wc_operation_update ||
      operation == svn_wc_operation_switch)
    {
      struct conflict_tree_incoming_delete_details *details;
      svn_boolean_t is_copy;
      svn_revnum_t copyfrom_rev;
      const char *copyfrom_repos_relpath;

      details = conflict->tree_conflict_incoming_details;
      if (details == NULL)
        return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Conflict resolution option '%d' requires "
                                   "details for tree conflict at '%s' to be "
                                   "fetched from the repository."),
                                option->id,
                                FUNC7(local_abspath,
                                                       scratch_pool));

      /* Ensure that the item is a copy of itself from before it was deleted.
       * Update and switch are supposed to set this up when flagging the
       * conflict. */
      FUNC0(FUNC13(&is_copy, &copyfrom_rev,
                                      &copyfrom_repos_relpath,
                                      NULL, NULL, NULL, NULL,
                                      ctx->wc_ctx, local_abspath, FALSE,
                                      scratch_pool, scratch_pool));
      if (!is_copy)
        return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Cannot resolve tree conflict on '%s' "
                                   "(expected a copied item, but the item "
                                   "is not a copy)"),
                                 FUNC7(
                                   FUNC8(
                                     wcroot_abspath,
                                     conflict->local_abspath),
                                 scratch_pool));
      else if (details->deleted_rev == SVN_INVALID_REVNUM &&
               details->added_rev == SVN_INVALID_REVNUM)
        return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Could not find the revision in which '%s' "
                                   "was deleted from the repository"),
                                 FUNC7(
                                   FUNC8(
                                     wcroot_abspath,
                                     conflict->local_abspath),
                                   scratch_pool));
      else if (details->deleted_rev != SVN_INVALID_REVNUM &&
               copyfrom_rev >= details->deleted_rev)
        return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Cannot resolve tree conflict on '%s' "
                                   "(expected an item copied from a revision "
                                   "smaller than r%ld, but the item was "
                                   "copied from r%ld)"),
                                 FUNC7(
                                   FUNC8(
                                     wcroot_abspath, conflict->local_abspath),
                                   scratch_pool),
                                 details->deleted_rev, copyfrom_rev);

      else if (details->added_rev != SVN_INVALID_REVNUM &&
               copyfrom_rev < details->added_rev)
        return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Cannot resolve tree conflict on '%s' "
                                   "(expected an item copied from a revision "
                                   "larger than r%ld, but the item was "
                                   "copied from r%ld)"),
                                 FUNC7(
                                   FUNC8(
                                     wcroot_abspath, conflict->local_abspath),
                                   scratch_pool),
                                  details->added_rev, copyfrom_rev);
      else if (operation == svn_wc_operation_update)
        {
          const char *old_repos_relpath;

          FUNC0(FUNC3(
                    &old_repos_relpath, NULL, NULL, conflict,
                    scratch_pool, scratch_pool));
          if (FUNC2(copyfrom_repos_relpath, details->repos_relpath) != 0 &&
              FUNC2(copyfrom_repos_relpath, old_repos_relpath) != 0)
            return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                     FUNC1("Cannot resolve tree conflict on '%s' "
                                       "(expected an item copied from '^/%s' "
                                       "or from '^/%s' but the item was "
                                       "copied from '^/%s@%ld')"),
                                     FUNC7(
                                       FUNC8(
                                         wcroot_abspath, conflict->local_abspath),
                                       scratch_pool),
                                     details->repos_relpath,
                                     old_repos_relpath,
                                     copyfrom_repos_relpath, copyfrom_rev);
        }
      else if (operation == svn_wc_operation_switch)
        {
          const char *old_repos_relpath;

          FUNC0(FUNC3(
                    &old_repos_relpath, NULL, NULL, conflict,
                    scratch_pool, scratch_pool));

          if (FUNC2(copyfrom_repos_relpath, old_repos_relpath) != 0)
            return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                     FUNC1("Cannot resolve tree conflict on '%s' "
                                       "(expected an item copied from '^/%s', "
                                       "but the item was copied from "
                                        "'^/%s@%ld')"),
                                     FUNC7(
                                       FUNC8(
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

      /* For merge, all we can do is ensure that the item still exists. */
      victim_node_kind =
        FUNC6(conflict);
      FUNC0(FUNC10(local_abspath, &on_disk_kind, scratch_pool));

      if (victim_node_kind != on_disk_kind)
        return FUNC9(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Cannot resolve tree conflict on '%s' "
                                   "(expected node kind '%s' but found '%s')"),
                                 FUNC7(
                                   FUNC8(
                                     wcroot_abspath, conflict->local_abspath),
                                   scratch_pool),
                                 FUNC11(victim_node_kind),
                                 FUNC11(on_disk_kind));
    }

  return SVN_NO_ERROR;
}