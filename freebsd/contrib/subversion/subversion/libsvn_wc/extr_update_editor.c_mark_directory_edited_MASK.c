#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct dir_baton {void* already_notified; int /*<<< orphan*/  local_abspath; TYPE_1__* edit_baton; scalar_t__ edit_conflict; int /*<<< orphan*/  pool; int /*<<< orphan*/  new_repos_relpath; int /*<<< orphan*/  old_revision; int /*<<< orphan*/  old_repos_relpath; void* edited; struct dir_baton* parent_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 

__attribute__((used)) static svn_error_t *
FUNC4(struct dir_baton *db, apr_pool_t *scratch_pool)
{
  if (db->edited)
    return SVN_NO_ERROR;

  if (db->parent_baton)
    FUNC0(FUNC4(db->parent_baton, scratch_pool));

  db->edited = TRUE;

  if (db->edit_conflict)
    {
      /* We have a (delayed) tree conflict to install */

      FUNC0(FUNC1(db->edit_conflict, db->edit_baton,
                                db->local_abspath,
                                db->old_repos_relpath, db->old_revision,
                                db->new_repos_relpath,
                                svn_node_dir, svn_node_dir,
                                NULL,
                                db->pool, scratch_pool));
      FUNC0(FUNC3(db->edit_baton->db,
                                          db->local_abspath,
                                          db->edit_conflict, NULL,
                                          scratch_pool));

      FUNC2(db->edit_baton, db->local_abspath, svn_node_dir,
                      svn_wc_notify_tree_conflict, scratch_pool);
      db->already_notified = TRUE;
    }

  return SVN_NO_ERROR;
}