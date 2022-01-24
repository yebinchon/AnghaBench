#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int svn_boolean_t ;
struct insert_base_baton_t {char const* repos_relpath; int /*<<< orphan*/  revision; scalar_t__ kind; int /*<<< orphan*/  status; scalar_t__ repos_id; } ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  STMT_APPLY_CHANGES_TO_BASE_NODE ; 
 int /*<<< orphan*/  STMT_CLEAR_MOVED_TO_FROM_DEST ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_DELETE_LOCK ; 
 int /*<<< orphan*/  STMT_DELETE_LOCK_RECURSIVELY ; 
 int /*<<< orphan*/  STMT_DELETE_NODE_ALL_LAYERS ; 
 int /*<<< orphan*/  STMT_DELETE_SHADOWED_RECURSIVE ; 
 int /*<<< orphan*/  STMT_RESET_ACTUAL_WITH_CHANGELIST ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct insert_base_baton_t*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct insert_base_baton_t*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 scalar_t__ svn_node_dir ; 
 char* FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,scalar_t__,char const*,...) ; 
 void* FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 char* FUNC24 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 int /*<<< orphan*/  svn_wc__db_status_not_present ; 

__attribute__((used)) static svn_error_t *
FUNC32(svn_wc__db_wcroot_t *wcroot,
            const char *local_relpath,
            svn_revnum_t new_revision,
            svn_revnum_t changed_rev,
            apr_time_t changed_date,
            const char *changed_author,
            const svn_checksum_t *new_checksum,
            apr_hash_t *new_dav_cache,
            svn_boolean_t keep_changelist,
            svn_boolean_t no_unlock,
            const svn_skel_t *work_items,
            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt_info;
  svn_sqlite__stmt_t *stmt_act;
  svn_boolean_t have_act;
  svn_string_t prop_blob = { 0 };
  svn_string_t inherited_prop_blob = { 0 };
  const char *changelist = NULL;
  const char *parent_relpath;
  svn_wc__db_status_t new_presence;
  svn_node_kind_t new_kind;
  const char *new_depth_str = NULL;
  svn_sqlite__stmt_t *stmt;
  apr_int64_t repos_id;
  const char *repos_relpath;
  int op_depth;
  svn_wc__db_status_t old_presence;
  svn_boolean_t moved_here;

    /* If we are adding a file or directory, then we need to get
     repository information from the parent node since "this node" does
     not have a BASE).

     For existing nodes, we should retain the (potentially-switched)
     repository information.  */
  FUNC0(FUNC9(&repos_id, &repos_relpath,
                                      wcroot, local_relpath,
                                      scratch_pool, scratch_pool));

  /* ### is it better to select only the data needed?  */
  FUNC0(FUNC26(&stmt_info, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC0(FUNC19(stmt_info, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC30(stmt_info));

  FUNC0(FUNC26(&stmt_act, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  FUNC0(FUNC19(stmt_act, "is",
                            wcroot->wc_id, local_relpath));
  FUNC0(FUNC28(&have_act, stmt_act));

  /* There should be something to commit!  */

  op_depth = FUNC21(stmt_info, 0);

  /* Figure out the new node's kind. It will be whatever is in WORKING_NODE,
     or there will be a BASE_NODE that has it.  */
  old_presence = FUNC25(stmt_info, 3, presence_map);
  new_kind = FUNC25(stmt_info, 4, kind_map);

  /* What will the new depth be?  */
  if (new_kind == svn_node_dir)
    new_depth_str = FUNC24(stmt_info, 11, scratch_pool);

  /* Check that the repository information is not being changed.  */
  if (op_depth == 0)
    {
      FUNC1(!FUNC23(stmt_info, 1));
      FUNC1(!FUNC23(stmt_info, 2));

      /* A commit cannot change these values.  */
      FUNC1(repos_id == FUNC22(stmt_info, 1));
      FUNC1(FUNC14(repos_relpath,
                            FUNC24(stmt_info, 2, NULL)) == 0);
    }

  if (old_presence != svn_wc__db_status_base_deleted)
    {
      /* Find the appropriate new properties -- ACTUAL overrides any properties
         in WORKING that arrived as part of a copy/move.

         Note: we'll keep them as a big blob of data, rather than
         deserialize/serialize them.  */
      if (have_act)
        prop_blob.data = FUNC20(stmt_act, 1, &prop_blob.len,
                                                 scratch_pool);
      if (prop_blob.data == NULL)
        prop_blob.data = FUNC20(stmt_info, 14, &prop_blob.len,
                                                 scratch_pool);

      inherited_prop_blob.data = FUNC20(
                                            stmt_info, 16,
                                            &inherited_prop_blob.len,
                                            scratch_pool);

      if (keep_changelist && have_act)
        changelist = FUNC24(stmt_act, 0, scratch_pool);

      moved_here = FUNC21(stmt_info, 15);
    }
  else
    {
      moved_here = FALSE;
      changelist = NULL;
    }

  /* ### other stuff?  */

  FUNC0(FUNC27(stmt_info));
  FUNC0(FUNC27(stmt_act));

  if (op_depth > 0)
    {
      int affected_rows;

      FUNC1(op_depth == FUNC13(local_relpath));

      /* First clear the moves that we are going to delete in a bit */
      {
        apr_hash_t *old_moves;
        apr_hash_index_t *hi;
        FUNC0(FUNC11(&old_moves, wcroot, local_relpath, 0,
                                         scratch_pool, scratch_pool));

        if (old_moves)
          for (hi = FUNC3(scratch_pool, old_moves);
                hi; hi = FUNC4(hi))
            {
              FUNC0(FUNC7(wcroot, FUNC5(hi),
                                        scratch_pool));
            }
      }

      /* This removes all layers of this node and at the same time determines
         if we need to remove shadowed layers below our descendants. */

      FUNC0(FUNC26(&stmt, wcroot->sdb,
                                        STMT_DELETE_NODE_ALL_LAYERS));
      FUNC0(FUNC19(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC31(&affected_rows, stmt));

      if (affected_rows > 1)
        {
          /* We commit a shadowing operation

           1) Remove all shadowed nodes
           2) And remove all nodes that have a base-deleted as lowest layer,
              because 1) removed that layer */

          FUNC0(FUNC26(&stmt, wcroot->sdb,
                                            STMT_DELETE_SHADOWED_RECURSIVE));

          FUNC0(FUNC19(stmt,
                                    "isd",
                                    wcroot->wc_id,
                                    local_relpath,
                                    op_depth));

          FUNC0(FUNC29(stmt));
        }

      /* Note that while these two calls look so similar that they might
         be integrated, they really affect a different op-depth and
         completely different nodes (via a different recursion pattern). */

      if (old_presence != svn_wc__db_status_base_deleted)
        {
          /* Collapse descendants of the current op_depth to layer 0,
             this includes moved-from/to clearing */
          FUNC0(FUNC8(wcroot, local_relpath, op_depth,
                                    repos_id, repos_relpath, new_revision,
                                    scratch_pool));
        }

      if (old_presence != svn_wc__db_status_base_deleted)
        {
          apr_hash_t *moves = NULL;

          FUNC0(FUNC11(&moves, wcroot, local_relpath, 0,
                                           scratch_pool, scratch_pool));

          /* And make the recorded local moves represent moves of the node we
             just committed. */
          FUNC0(FUNC12(wcroot, local_relpath,
                                      repos_id, repos_relpath, new_revision,
                                      moves, scratch_pool));
        }

      if (moved_here)
        {
          /* This node is no longer modified, so no node was moved here */
          FUNC0(FUNC26(&stmt, wcroot->sdb,
                                            STMT_CLEAR_MOVED_TO_FROM_DEST));
          FUNC0(FUNC19(stmt, "is", wcroot->wc_id,
                                                local_relpath));

          FUNC0(FUNC29(stmt));
        }
    }
  /* Update or add the BASE_NODE row with all the new information.  */

  if (*local_relpath == '\0')
    parent_relpath = NULL;
  else
    parent_relpath = FUNC15(local_relpath, scratch_pool);

  /* Preserve any incomplete status */
  if (old_presence != svn_wc__db_status_base_deleted)
    {
      new_presence = (old_presence == svn_wc__db_status_incomplete
                      ? svn_wc__db_status_incomplete
                      : svn_wc__db_status_normal);

      FUNC0(FUNC26(&stmt, wcroot->sdb,
                                        STMT_APPLY_CHANGES_TO_BASE_NODE));
      /* symlink_target not yet used */
      FUNC0(FUNC19(stmt, "issisrtstrisnbn",
                                wcroot->wc_id, local_relpath,
                                parent_relpath,
                                repos_id,
                                repos_relpath,
                                new_revision,
                                presence_map, new_presence,
                                new_depth_str,
                                kind_map, new_kind,
                                changed_rev,
                                changed_date,
                                changed_author,
                                prop_blob.data, prop_blob.len));

      FUNC0(FUNC17(stmt, 13, new_checksum,
                                        scratch_pool));
      FUNC0(FUNC18(stmt, 15, new_dav_cache,
                                          scratch_pool));
      if (inherited_prop_blob.data != NULL)
        {
          FUNC0(FUNC16(stmt, 17, inherited_prop_blob.data,
                                        inherited_prop_blob.len));
        }

      FUNC0(FUNC29(stmt));
    }
  else
    {
      struct insert_base_baton_t ibb;
      FUNC6(&ibb);

      ibb.repos_id = repos_id;
      ibb.status = svn_wc__db_status_not_present;
      ibb.kind = new_kind;
      ibb.repos_relpath = repos_relpath;
      ibb.revision = new_revision;

      FUNC0(FUNC10(&ibb, wcroot, local_relpath, scratch_pool));

      keep_changelist = FALSE; /* Nothing there */
    }

  if (have_act)
    {
      if (keep_changelist && changelist != NULL)
        {
          /* The user told us to keep the changelist. Replace the row in
             ACTUAL_NODE with the basic keys and the changelist.  */
          FUNC0(FUNC26(
                    &stmt, wcroot->sdb,
                    STMT_RESET_ACTUAL_WITH_CHANGELIST));
          FUNC0(FUNC19(stmt, "isss",
                                    wcroot->wc_id, local_relpath,
                                    FUNC15(local_relpath,
                                                        scratch_pool),
                                    changelist));
          FUNC0(FUNC29(stmt));
        }
      else
        {
          /* Toss the ACTUAL_NODE row.  */
          FUNC0(FUNC26(&stmt, wcroot->sdb,
                                            STMT_DELETE_ACTUAL_NODE));
          FUNC0(FUNC19(stmt, "is", wcroot->wc_id, local_relpath));
          FUNC0(FUNC29(stmt));
        }
    }

  if (!no_unlock)
    {
      svn_sqlite__stmt_t *lock_stmt;
      svn_boolean_t op_root = (op_depth > 0
                               && (FUNC13(local_relpath) == op_depth));

      /* If we are committing an add of a delete, we can assume we own
         all locks at or below REPOS_RELPATH (or the server would have
         denied the commit). As we must have passed these to the server
         we can now safely remove them.
       */
      FUNC0(FUNC26(&lock_stmt, wcroot->sdb,
                                        op_root
                                          ? STMT_DELETE_LOCK_RECURSIVELY
                                          : STMT_DELETE_LOCK));
      FUNC0(FUNC19(lock_stmt, "is", repos_id, repos_relpath));
      FUNC0(FUNC29(lock_stmt));
    }

  /* Install any work items into the queue, as part of this transaction.  */
  FUNC0(FUNC2(wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}