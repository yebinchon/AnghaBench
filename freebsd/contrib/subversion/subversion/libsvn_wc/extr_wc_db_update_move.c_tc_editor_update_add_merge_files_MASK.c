#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  db; TYPE_4__* wcroot; int /*<<< orphan*/  new_version; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_1__ update_local_add_baton_t ;
typedef  scalar_t__ svn_wc_notify_state_t ;
struct TYPE_13__ {char const* path_in_repos; int /*<<< orphan*/  peg_rev; scalar_t__ node_kind; } ;
typedef  TYPE_2__ svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_14__ {int /*<<< orphan*/  local_relpath; TYPE_1__* b; scalar_t__ skip; } ;
typedef  TYPE_3__ added_node_baton_t ;
struct TYPE_15__ {int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int svn_wc_merge_conflict ; 
 scalar_t__ svn_wc_notify_state_changed ; 
 scalar_t__ svn_wc_notify_state_conflicted ; 
 scalar_t__ svn_wc_notify_state_merged ; 
 int /*<<< orphan*/  svn_wc_notify_update_update ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(added_node_baton_t *nb,
                                 const svn_checksum_t *working_checksum,
                                 const svn_checksum_t *base_checksum,
                                 apr_hash_t *working_props,
                                 apr_hash_t *base_props,
                                 apr_pool_t *scratch_pool)
{
  update_local_add_baton_t *b = nb->b;
  apr_array_header_t *propchanges;
  svn_boolean_t is_modified;
  enum svn_wc_merge_outcome_t merge_outcome;
  svn_skel_t *conflict_skel = NULL;
  svn_wc_notify_state_t prop_state, content_state;
  svn_skel_t *work_items = NULL;
  svn_node_kind_t kind_on_disk;
  const char *local_abspath = FUNC2(b->wcroot->abspath,
                                              nb->local_relpath,
                                              scratch_pool);

  FUNC0(FUNC16(nb, scratch_pool));
  if (nb->skip)
    return SVN_NO_ERROR;

  /* Check for on-disk obstructions or missing files. */
  FUNC0(FUNC3(local_abspath, &kind_on_disk, scratch_pool));
  if (kind_on_disk != svn_node_file)
    {
      FUNC0(FUNC17(nb, svn_node_file,
                                                            kind_on_disk,
                                                            scratch_pool));
      nb->skip = TRUE;
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC15(&prop_state, &conflict_skel,
                                          nb->local_relpath,
                                          base_props, working_props,
                                          b->db, b->wcroot,
                                          scratch_pool, scratch_pool));

  FUNC0(FUNC10(&is_modified,
                                           b->db, local_abspath,
                                           FALSE /* exact_comparison */,
                                           scratch_pool));
  if (!is_modified)
    {
      svn_skel_t *work_item = NULL;

      FUNC0(FUNC12(&work_item, b->db,
                                            local_abspath, NULL,
                                            /* FIXME: use_commit_times? */
                                            FALSE,
                                            TRUE,  /* record_file_info */
                                            scratch_pool, scratch_pool));
      work_items = FUNC13(work_items, work_item, scratch_pool);
      content_state = svn_wc_notify_state_changed;
    }
  else
    {
      const char *empty_file_abspath;
      const char *pristine_abspath;
      svn_skel_t *work_item = NULL;

      /*
       * Run a 3-way merge to update the file, using the empty file
       * merge base, the post-update pristine text as the merge-left version,
       * and the locally added content of the working file as the merge-right
       * version.
       */
      FUNC0(FUNC4(NULL, &empty_file_abspath, NULL,
                                       svn_io_file_del_on_pool_cleanup,
                                       scratch_pool, scratch_pool));
      FUNC0(FUNC9(&pristine_abspath, b->db,
                                           b->wcroot->abspath, base_checksum,
                                           scratch_pool, scratch_pool));

      /* Create a property diff which shows all props as added. */
      FUNC0(FUNC5(&propchanges, working_props,
                             FUNC1(scratch_pool), scratch_pool));

      FUNC0(FUNC11(&work_item, &conflict_skel,
                                     &merge_outcome, b->db,
                                     empty_file_abspath,
                                     pristine_abspath,
                                     local_abspath,
                                     local_abspath,
                                     NULL, NULL, NULL, /* diff labels */
                                     FUNC1(scratch_pool),
                                     FALSE, /* dry-run */
                                     NULL, /* diff3-cmd */
                                     NULL, /* merge options */
                                     propchanges,
                                     b->cancel_func, b->cancel_baton,
                                     scratch_pool, scratch_pool));

      work_items = FUNC13(work_items, work_item, scratch_pool);

      if (merge_outcome == svn_wc_merge_conflict)
        content_state = svn_wc_notify_state_conflicted;
      else
        content_state = svn_wc_notify_state_merged;
    }

  /* If there are any conflicts to be stored, convert them into work items
   * too. */
  if (conflict_skel)
    {
      svn_wc_conflict_version_t *new_version;
      svn_node_kind_t new_kind;
      svn_revnum_t new_rev;
      const char *repos_relpath;

      new_version = FUNC14(nb->b->new_version,
                                                scratch_pool);
      FUNC0(FUNC8(NULL, &new_kind, &new_rev,
                                                &repos_relpath, NULL, NULL,
                                                NULL, NULL, NULL, NULL, NULL,
                                                NULL, NULL, NULL, NULL,
                                                b->wcroot, nb->local_relpath,
                                                scratch_pool, scratch_pool));
      /* Fill in conflict info templates with info for this node. */
      new_version->path_in_repos = repos_relpath;
      new_version->node_kind = new_kind;
      new_version->peg_rev = new_rev;

      /* Create conflict markers. */
      FUNC0(FUNC7(conflict_skel, NULL,
                                                  new_version, scratch_pool,
                                                  scratch_pool));
      if (prop_state == svn_wc_notify_state_conflicted)
        FUNC0(FUNC6(&work_items, b->db,
                                                local_abspath,
                                                conflict_skel,
                                                scratch_pool,
                                                scratch_pool));
    }

  FUNC0(FUNC18(b->wcroot, nb->local_relpath, b->db,
                               svn_wc_notify_update_update,
                               svn_node_file, content_state, prop_state,
                               conflict_skel, work_items, scratch_pool));

  return SVN_NO_ERROR;
}