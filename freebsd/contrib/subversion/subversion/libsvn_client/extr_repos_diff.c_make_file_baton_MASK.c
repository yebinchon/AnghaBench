#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_prop_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton {int /*<<< orphan*/  base_revision; int /*<<< orphan*/  propchanges; int /*<<< orphan*/  path; int /*<<< orphan*/ * pool; void* skip; void* tree_conflicted; int /*<<< orphan*/  added; TYPE_1__* edit_baton; struct dir_baton* parent_baton; } ;
struct dir_baton {int /*<<< orphan*/  users; TYPE_1__* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 struct file_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct file_baton *
FUNC4(const char *path,
                struct dir_baton *parent_baton,
                svn_boolean_t added,
                apr_pool_t *result_pool)
{
  apr_pool_t *file_pool = FUNC3(result_pool);
  struct file_baton *file_baton = FUNC1(file_pool, sizeof(*file_baton));

  file_baton->parent_baton = parent_baton;
  file_baton->edit_baton = parent_baton->edit_baton;
  file_baton->added = added;
  file_baton->tree_conflicted = FALSE;
  file_baton->skip = FALSE;
  file_baton->pool = file_pool;
  file_baton->path = FUNC2(file_pool, path);
  file_baton->propchanges  = FUNC0(file_pool, 8, sizeof(svn_prop_t));
  file_baton->base_revision = parent_baton->edit_baton->revision;

  parent_baton->users++;

  return file_baton;
}