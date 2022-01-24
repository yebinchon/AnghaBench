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
typedef  int /*<<< orphan*/  svn_prop_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton_t {int /*<<< orphan*/  propchanges; int /*<<< orphan*/ * pool; int /*<<< orphan*/  added; int /*<<< orphan*/  relpath; int /*<<< orphan*/  name; int /*<<< orphan*/  local_abspath; struct dir_baton_t* parent_baton; struct edit_baton_t* eb; } ;
struct edit_baton_t {int /*<<< orphan*/  anchor_abspath; } ;
struct dir_baton_t {int /*<<< orphan*/  users; struct edit_baton_t* eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 struct file_baton_t* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct file_baton_t *
FUNC6(const char *path,
                svn_boolean_t added,
                struct dir_baton_t *parent_baton,
                apr_pool_t *result_pool)
{
  apr_pool_t *file_pool = FUNC5(result_pool);
  struct file_baton_t *fb = FUNC1(file_pool, sizeof(*fb));
  struct edit_baton_t *eb = parent_baton->eb;

  fb->eb = eb;
  fb->parent_baton = parent_baton;
  fb->parent_baton->users++;

  /* Allocate 1 string for using as 3 strings */
  fb->local_abspath = FUNC3(eb->anchor_abspath, path, file_pool);
  fb->relpath = FUNC4(eb->anchor_abspath, fb->local_abspath);
  fb->name = FUNC2(fb->relpath, NULL);

  fb->added = added;
  fb->pool = file_pool;
  fb->propchanges  = FUNC0(file_pool, 8, sizeof(svn_prop_t));

  return fb;
}