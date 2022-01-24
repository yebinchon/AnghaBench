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
struct file_baton {int /*<<< orphan*/ * ood_changed_author; int /*<<< orphan*/  ood_kind; int /*<<< orphan*/  name; int /*<<< orphan*/  repos_relpath; scalar_t__ ood_changed_date; int /*<<< orphan*/  ood_changed_rev; struct edit_baton* edit_baton; struct dir_baton* dir_baton; int /*<<< orphan*/ * pool; int /*<<< orphan*/  local_abspath; } ;
struct edit_baton {int /*<<< orphan*/  anchor_abspath; } ;
struct dir_baton {struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 struct file_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct file_baton *
FUNC5(struct dir_baton *parent_dir_baton,
                const char *path,
                apr_pool_t *pool)
{
  struct dir_baton *pb = parent_dir_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *f = FUNC0(pool, sizeof(*f));

  /* Finish populating the baton members. */
  f->local_abspath = FUNC3(eb->anchor_abspath, path, pool);
  f->name = FUNC2(f->local_abspath, NULL);
  f->pool = pool;
  f->dir_baton = pb;
  f->edit_baton = eb;
  f->ood_changed_rev = SVN_INVALID_REVNUM;
  f->ood_changed_date = 0;
  f->repos_relpath = FUNC4(FUNC1(pb, pool),
                                      f->name, pool);
  f->ood_kind = svn_node_file;
  f->ood_changed_author = NULL;
  return f;
}