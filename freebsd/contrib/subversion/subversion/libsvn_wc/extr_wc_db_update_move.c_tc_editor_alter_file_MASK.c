#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  const* checksum; int /*<<< orphan*/ * props; int /*<<< orphan*/  location_and_kind; } ;
typedef  TYPE_1__ working_node_version_t ;
struct TYPE_15__ {int /*<<< orphan*/  db; TYPE_7__* wcroot; int /*<<< orphan*/  operation; int /*<<< orphan*/  dst_op_depth; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  new_version; int /*<<< orphan*/  old_version; } ;
typedef  TYPE_2__ update_move_baton_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_16__ {scalar_t__ skip; TYPE_2__* umb; } ;
typedef  TYPE_3__ node_move_baton_t ;
typedef  enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_17__ {int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_3__*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_edit ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_obstructed ; 
 int svn_wc_merge_conflict ; 
 int /*<<< orphan*/  svn_wc_notify_state_changed ; 
 int /*<<< orphan*/  svn_wc_notify_state_conflicted ; 
 int /*<<< orphan*/  svn_wc_notify_state_merged ; 
 int /*<<< orphan*/  svn_wc_notify_state_unchanged ; 
 int /*<<< orphan*/  svn_wc_notify_update_update ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_2__*,char const*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(node_move_baton_t *nmb,
                     const char *dst_relpath,
                     const svn_checksum_t *old_checksum,
                     const svn_checksum_t *new_checksum,
                     apr_hash_t *old_props,
                     apr_hash_t *new_props,
                     apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  working_node_version_t old_version, new_version;
  const char *local_abspath = FUNC5(b->wcroot->abspath,
                                              dst_relpath,
                                              scratch_pool);
  const char *old_pristine_abspath;
  const char *new_pristine_abspath;
  svn_skel_t *conflict_skel = NULL;
  apr_hash_t *actual_props;
  apr_array_header_t *propchanges;
  enum svn_wc_merge_outcome_t merge_outcome;
  svn_wc_notify_state_t prop_state, content_state;
  svn_skel_t *work_item, *work_items = NULL;
  svn_node_kind_t wc_kind;
  svn_boolean_t obstructed = FALSE;

  FUNC0(FUNC3(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  FUNC0(FUNC6(local_abspath, &wc_kind, scratch_pool));
  if (wc_kind != svn_node_none && wc_kind != svn_node_file)
    {
      FUNC0(FUNC2(&conflict_skel, nmb, dst_relpath,
                                        svn_node_file, svn_node_file,
                                        svn_wc_conflict_reason_obstructed,
                                        svn_wc_conflict_action_edit,
                                        NULL,
                                        scratch_pool, scratch_pool));
      obstructed = TRUE;
    }

  old_version.location_and_kind = b->old_version;
  new_version.location_and_kind = b->new_version;

  old_version.checksum = old_checksum;
  old_version.props = old_props;
  new_version.checksum = new_checksum;
  new_version.props = new_props;

  /* ### TODO: Only do this when there is no higher WORKING layer */
  FUNC0(FUNC14(&prop_state, &conflict_skel, &propchanges,
                               &actual_props, b, dst_relpath,
                               &old_version, &new_version,
                               scratch_pool, scratch_pool));

  if (!obstructed
      && !FUNC4(new_version.checksum, old_version.checksum))
    {
      svn_boolean_t is_locally_modified;

      FUNC0(FUNC9(&is_locally_modified,
                                               b->db, local_abspath,
                                               FALSE /* exact_comparison */,
                                               scratch_pool));
      if (!is_locally_modified)
        {
          FUNC0(FUNC11(&work_item, b->db,
                                                local_abspath,
                                                NULL,
                                                FALSE /* FIXME: use_commit_times? */,
                                                TRUE  /* record_file_info */,
                                                scratch_pool, scratch_pool));

          work_items = FUNC12(work_items, work_item, scratch_pool);

          content_state = svn_wc_notify_state_changed;
        }
      else
        {
          /*
           * Run a 3-way merge to update the file, using the pre-update
           * pristine text as the merge base, the post-update pristine
           * text as the merge-left version, and the current content of the
           * moved-here working file as the merge-right version.
           */
          FUNC0(FUNC8(&old_pristine_abspath,
                                               b->db, b->wcroot->abspath,
                                               old_version.checksum,
                                               scratch_pool, scratch_pool));
          FUNC0(FUNC8(&new_pristine_abspath,
                                               b->db, b->wcroot->abspath,
                                               new_version.checksum,
                                               scratch_pool, scratch_pool));
          FUNC0(FUNC10(&work_item, &conflict_skel,
                                         &merge_outcome, b->db,
                                         old_pristine_abspath,
                                         new_pristine_abspath,
                                         local_abspath,
                                         local_abspath,
                                         NULL, NULL, NULL, /* diff labels */
                                         actual_props,
                                         FALSE, /* dry-run */
                                         NULL, /* diff3-cmd */
                                         NULL, /* merge options */
                                         propchanges,
                                         b->cancel_func, b->cancel_baton,
                                         scratch_pool, scratch_pool));

          work_items = FUNC12(work_items, work_item, scratch_pool);

          if (merge_outcome == svn_wc_merge_conflict)
            content_state = svn_wc_notify_state_conflicted;
          else
            content_state = svn_wc_notify_state_merged;
        }
    }
  else
    content_state = svn_wc_notify_state_unchanged;

  /* If there are any conflicts to be stored, convert them into work items
   * too. */
  if (conflict_skel)
    {
      const char *move_dst_repos_relpath;

      FUNC0(FUNC7(NULL, NULL, NULL,
                                        &move_dst_repos_relpath, NULL, NULL,
                                        NULL, NULL, NULL, NULL, NULL, NULL,
                                        NULL,
                                        b->wcroot, dst_relpath,
                                        b->dst_op_depth,
                                        scratch_pool, scratch_pool));

      FUNC0(FUNC1(&work_item, local_abspath, b->db,
                                      move_dst_repos_relpath, conflict_skel,
                                      b->operation, &old_version, &new_version,
                                      svn_node_file, !obstructed,
                                      scratch_pool, scratch_pool));

      work_items = FUNC12(work_items, work_item, scratch_pool);
    }

  FUNC0(FUNC13(b->wcroot, dst_relpath, b->db,
                               svn_wc_notify_update_update,
                               svn_node_file,
                               content_state,
                               prop_state,
                               conflict_skel, work_items, scratch_pool));

  return SVN_NO_ERROR;
}