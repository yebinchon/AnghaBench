#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/  root_path; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/  force; } ;
struct dir_baton {struct edit_baton* edit_baton; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct dir_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *db = FUNC1(pool, sizeof(*db));

  FUNC0(FUNC2(eb->root_path, eb->force,
                             eb->notify_func, eb->notify_baton, pool));

  /* Build our dir baton. */
  db->path = eb->root_path;
  db->edit_baton = eb;
  *root_baton = db;

  return SVN_NO_ERROR;
}