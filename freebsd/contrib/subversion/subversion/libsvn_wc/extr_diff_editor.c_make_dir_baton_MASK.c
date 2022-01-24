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
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct edit_baton_t {int /*<<< orphan*/  anchor_abspath; int /*<<< orphan*/ * pool; } ;
struct dir_baton_t {int users; int /*<<< orphan*/  compared; int /*<<< orphan*/  propchanges; int /*<<< orphan*/ * pool; int /*<<< orphan*/  depth; int /*<<< orphan*/  added; struct edit_baton_t* eb; int /*<<< orphan*/  relpath; int /*<<< orphan*/  name; int /*<<< orphan*/  local_abspath; struct dir_baton_t* parent_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dir_baton_t* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dir_baton_t *
FUNC7(const char *path,
               struct dir_baton_t *parent_baton,
               struct edit_baton_t *eb,
               svn_boolean_t added,
               svn_depth_t depth,
               apr_pool_t *result_pool)
{
  apr_pool_t *dir_pool = FUNC6(parent_baton ? parent_baton->pool
                                                      : eb->pool);
  struct dir_baton_t *db = FUNC2(dir_pool, sizeof(*db));

  db->parent_baton = parent_baton;

  /* Allocate 1 string for using as 3 strings */
  db->local_abspath = FUNC4(eb->anchor_abspath, path, dir_pool);
  db->relpath = FUNC5(eb->anchor_abspath, db->local_abspath);
  db->name = FUNC3(db->relpath, NULL);

  db->eb = eb;
  db->added = added;
  db->depth = depth;
  db->pool = dir_pool;
  db->propchanges = FUNC0(dir_pool, 8, sizeof(svn_prop_t));
  db->compared = FUNC1(dir_pool);

  if (parent_baton != NULL)
    {
      parent_baton->users++;
    }

  db->users = 1;

  return db;
}