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
typedef  int /*<<< orphan*/  svn_prop_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {int /*<<< orphan*/  users; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  propchanges; int /*<<< orphan*/  path; int /*<<< orphan*/ * pool; void* skip_children; void* skip; void* tree_conflicted; int /*<<< orphan*/  added; struct edit_baton* edit_baton; struct dir_baton* parent_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 struct dir_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dir_baton *
FUNC4(const char *path,
               struct dir_baton *parent_baton,
               struct edit_baton *edit_baton,
               svn_boolean_t added,
               svn_revnum_t base_revision,
               apr_pool_t *result_pool)
{
  apr_pool_t *dir_pool = FUNC3(result_pool);
  struct dir_baton *dir_baton = FUNC1(dir_pool, sizeof(*dir_baton));

  dir_baton->parent_baton = parent_baton;
  dir_baton->edit_baton = edit_baton;
  dir_baton->added = added;
  dir_baton->tree_conflicted = FALSE;
  dir_baton->skip = FALSE;
  dir_baton->skip_children = FALSE;
  dir_baton->pool = dir_pool;
  dir_baton->path = FUNC2(dir_pool, path);
  dir_baton->propchanges  = FUNC0(dir_pool, 8, sizeof(svn_prop_t));
  dir_baton->base_revision = base_revision;
  dir_baton->users++;

  if (parent_baton)
    parent_baton->users++;

  return dir_baton;
}