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
struct file_baton {void* already_notified; int /*<<< orphan*/  local_abspath; TYPE_1__* edit_baton; scalar_t__ edit_conflict; int /*<<< orphan*/  pool; int /*<<< orphan*/  new_repos_relpath; int /*<<< orphan*/  old_revision; int /*<<< orphan*/  old_repos_relpath; void* edited; int /*<<< orphan*/  dir_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 

__attribute__((used)) static svn_error_t *
FUNC5(struct file_baton *fb, apr_pool_t *scratch_pool)
{
  if (fb->edited)
    return SVN_NO_ERROR;

  FUNC0(FUNC3(fb->dir_baton, scratch_pool));

  fb->edited = TRUE;

  if (fb->edit_conflict)
    {
      /* We have a (delayed) tree conflict to install */

      FUNC0(FUNC1(fb->edit_conflict, fb->edit_baton,
                                fb->local_abspath, fb->old_repos_relpath,
                                fb->old_revision, fb->new_repos_relpath,
                                svn_node_file, svn_node_file,
                                NULL,
                                fb->pool, scratch_pool));

      FUNC0(FUNC4(fb->edit_baton->db,
                                          fb->local_abspath,
                                          fb->edit_conflict, NULL,
                                          scratch_pool));

      FUNC2(fb->edit_baton, fb->local_abspath, svn_node_file,
                      svn_wc_notify_tree_conflict, scratch_pool);
      fb->already_notified = TRUE;
    }

  return SVN_NO_ERROR;
}