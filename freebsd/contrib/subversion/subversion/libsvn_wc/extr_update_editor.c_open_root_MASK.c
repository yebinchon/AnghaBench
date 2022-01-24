#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct edit_baton {char const* target_abspath; char* target_basename; int /*<<< orphan*/ * target_revision; int /*<<< orphan*/  db; void* root_opened; } ;
struct dir_baton {char const* local_abspath; int was_incomplete; int /*<<< orphan*/  new_repos_relpath; void* shadowed; int /*<<< orphan*/ * edit_conflict; int /*<<< orphan*/  old_revision; int /*<<< orphan*/  old_repos_relpath; int /*<<< orphan*/  pool; int /*<<< orphan*/  ambient_depth; int /*<<< orphan*/  changed_author; int /*<<< orphan*/  changed_date; int /*<<< orphan*/  changed_rev; void* already_notified; void* skip_this; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 void* TRUE ; 
 TYPE_1__* FUNC1 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct edit_baton*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct edit_baton*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct edit_baton*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dir_baton**,int /*<<< orphan*/ *,struct edit_baton*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct edit_baton*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_edit ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_moved_away ; 
 int /*<<< orphan*/  svn_wc_notify_skip_conflicted ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 

__attribute__((used)) static svn_error_t *
FUNC17(void *edit_baton,
          svn_revnum_t base_revision, /* This is ignored in co */
          apr_pool_t *pool,
          void **dir_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *db;
  svn_boolean_t already_conflicted, conflict_ignored;
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_wc__db_status_t base_status;
  svn_node_kind_t kind;
  svn_boolean_t have_work;

  /* Note that something interesting is actually happening in this
     edit run. */
  eb->root_opened = TRUE;

  FUNC0(FUNC5(&db, NULL, eb, NULL, FALSE, pool));
  *dir_baton = db;

  err = FUNC1(&already_conflicted, &conflict_ignored,
                                   eb->db, db->local_abspath, pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC9(err);

      FUNC8(err);
      already_conflicted = conflict_ignored = FALSE;
    }
  else if (already_conflicted)
    {
      /* Record a skip of both the anchor and target in the skipped tree
         as the anchor itself might not be updated */
      FUNC0(FUNC6(eb, db->local_abspath, pool));
      FUNC0(FUNC6(eb, eb->target_abspath, pool));

      db->skip_this = TRUE;
      db->already_notified = TRUE;

      /* Notify that we skipped the target, while we actually skipped
         the anchor */
      FUNC4(eb, eb->target_abspath, svn_node_unknown,
                      svn_wc_notify_skip_conflicted, pool);

      return SVN_NO_ERROR;
    }


  FUNC0(FUNC15(&status, &kind, &db->old_revision,
                               &db->old_repos_relpath, NULL, NULL,
                               &db->changed_rev, &db->changed_date,
                               &db->changed_author, &db->ambient_depth,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, &have_work,
                               eb->db, db->local_abspath,
                               db->pool, pool));

  if (have_work)
    {
      FUNC0(FUNC12(&base_status, NULL,
                                       &db->old_revision,
                                       &db->old_repos_relpath, NULL, NULL,
                                       &db->changed_rev, &db->changed_date,
                                       &db->changed_author,
                                       &db->ambient_depth,
                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                       eb->db, db->local_abspath,
                                       db->pool, pool));
    }
  else
    base_status = status;

  FUNC0(FUNC2(&db->new_repos_relpath, db->local_abspath,
                                  db->old_repos_relpath, eb, NULL,
                                  db->pool, pool));

  if (conflict_ignored)
    db->shadowed = TRUE;
  else if (have_work)
    {
      const char *move_src_root_abspath;

      FUNC0(FUNC13(NULL, NULL, &move_src_root_abspath,
                                       NULL, eb->db, db->local_abspath,
                                       pool, pool));

      if (move_src_root_abspath)
        {
          /* This is an update anchored inside a move. We need to
             raise a move-edit tree-conflict on the move root to
             update the move destination. */
          svn_skel_t *tree_conflict = FUNC11(pool);

          FUNC0(FUNC10(
                    tree_conflict, eb->db, move_src_root_abspath,
                    svn_wc_conflict_reason_moved_away,
                    svn_wc_conflict_action_edit,
                    move_src_root_abspath, pool, pool));

          if (FUNC7(db->local_abspath, move_src_root_abspath))
            {
              /* We are raising the tree-conflict on some parent of
                 the edit root, we won't be handling that path again
                 so raise the conflict now. */
              FUNC0(FUNC3(tree_conflict, eb,
                                        move_src_root_abspath,
                                        db->old_repos_relpath,
                                        db->old_revision,
                                        db->new_repos_relpath,
                                        svn_node_dir, svn_node_dir,
                                        NULL, pool, pool));
              FUNC0(FUNC14(eb->db,
                                                  move_src_root_abspath,
                                                  tree_conflict,
                                                  NULL, pool));
              FUNC4(eb, move_src_root_abspath, svn_node_dir,
                              svn_wc_notify_tree_conflict, pool);
            }
          else
            db->edit_conflict = tree_conflict;
        }

      db->shadowed = TRUE; /* Needed for the close_directory() on the root, to
                              make sure it doesn't use the ACTUAL tree */
    }

  if (*eb->target_basename == '\0')
    {
      /* For an update with a NULL target, this is equivalent to open_dir(): */

      db->was_incomplete = (base_status == svn_wc__db_status_incomplete);

      /* ### TODO: Add some tree conflict and obstruction detection, etc. like
                   open_directory() does.
                   (or find a way to reuse that code here)

         ### BH 2013: I don't think we need all of the detection here, as the
                      user explicitly asked to update this node. So we don't
                      have to tell that it is a local replacement/delete.
       */

      FUNC0(FUNC16(eb->db,
                                                        db->local_abspath,
                                                        db->new_repos_relpath,
                                                        *eb->target_revision,
                                                        pool));
    }

  return SVN_NO_ERROR;
}