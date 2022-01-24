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
struct dump_edit_baton {int dummy; } ;
struct dir_baton {char const* repos_relpath; char* copyfrom_path; void* deleted_entries; void* deleted_props; void* props; int /*<<< orphan*/ * headers; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/ * pool; struct dump_edit_baton* eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 struct dir_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dir_baton *
FUNC3(const char *path,
               const char *copyfrom_path,
               svn_revnum_t copyfrom_rev,
               void *edit_baton,
               struct dir_baton *pb,
               apr_pool_t *pool)
{
  struct dump_edit_baton *eb = edit_baton;
  struct dir_baton *new_db = FUNC1(pool, sizeof(*new_db));
  const char *repos_relpath;

  /* Construct the full path of this node. */
  if (pb)
    repos_relpath = FUNC2(path, pool);
  else
    repos_relpath = "";

  /* Strip leading slash from copyfrom_path so that the path is
     canonical and svn_relpath_join can be used */
  if (copyfrom_path)
    copyfrom_path = FUNC2(copyfrom_path, pool);

  new_db->eb = eb;
  new_db->pool = pool;
  new_db->repos_relpath = repos_relpath;
  new_db->copyfrom_path = copyfrom_path
                            ? FUNC2(copyfrom_path, pool)
                            : NULL;
  new_db->copyfrom_rev = copyfrom_rev;
  new_db->headers = NULL;
  new_db->props = FUNC0(pool);
  new_db->deleted_props = FUNC0(pool);
  new_db->deleted_entries = FUNC0(pool);

  return new_db;
}