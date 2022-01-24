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
struct file_baton {int /*<<< orphan*/  action; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/ * copyfrom_path; int /*<<< orphan*/  is_copy; void* deleted_props; void* props; int /*<<< orphan*/  repos_relpath; int /*<<< orphan*/ * pool; int /*<<< orphan*/  eb; } ;
struct dir_baton {int /*<<< orphan*/  eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 struct file_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  svn_node_action_change ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct file_baton *
FUNC3(const char *path,
                struct dir_baton *pb,
                apr_pool_t *pool)
{
  struct file_baton *new_fb = FUNC1(pool, sizeof(*new_fb));

  new_fb->eb = pb->eb;
  new_fb->pool = pool;
  new_fb->repos_relpath = FUNC2(path, pool);
  new_fb->props = FUNC0(pool);
  new_fb->deleted_props = FUNC0(pool);
  new_fb->is_copy = FALSE;
  new_fb->copyfrom_path = NULL;
  new_fb->copyfrom_rev = SVN_INVALID_REVNUM;
  new_fb->action = svn_node_action_change;

  return new_fb;
}