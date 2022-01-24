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
struct edit_baton {int /*<<< orphan*/  path; } ;
struct dir_baton {char const* path; char const* cmp_path; int /*<<< orphan*/ * pool; void* check_name_collision; int /*<<< orphan*/  deleted_entries; void* written_out; int /*<<< orphan*/  cmp_rev; struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dir_baton* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dir_baton *
FUNC6(const char *path,
               const char *cmp_path,
               svn_revnum_t cmp_rev,
               void *edit_baton,
               struct dir_baton *pb,
               apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *new_db = FUNC2(pool, sizeof(*new_db));
  const char *full_path;

  /* A path relative to nothing?  I don't think so. */
  FUNC0(!path || pb);

  /* Construct the full path of this node. */
  if (pb)
    full_path = FUNC5(eb->path, path, pool);
  else
    full_path = FUNC3(pool, eb->path);

  /* Remove leading slashes from copyfrom paths. */
  if (cmp_path)
    cmp_path = FUNC4(cmp_path, pool);

  new_db->edit_baton = eb;
  new_db->path = full_path;
  new_db->cmp_path = cmp_path;
  new_db->cmp_rev = cmp_rev;
  new_db->written_out = FALSE;
  new_db->deleted_entries = FUNC1(pool);
  new_db->check_name_collision = FALSE;
  new_db->pool = pool;

  return new_db;
}