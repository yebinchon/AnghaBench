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
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_boolean_t ;
struct revision_baton {struct directory_baton* db; int /*<<< orphan*/  pool; } ;
struct directory_baton {char const* copyfrom_path; scalar_t__ copyfrom_rev; char const* relpath; struct directory_baton* parent; void* baton; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 struct directory_baton* FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct revision_baton *rb,
               void *child_baton,
               const char *relpath,
               svn_boolean_t is_added,
               const char *copyfrom_path,
               svn_revnum_t copyfrom_rev)
{
  struct directory_baton *child_db = FUNC2(rb->pool, sizeof (*child_db));

  FUNC1(
    is_added || (copyfrom_path == NULL && copyfrom_rev == SVN_INVALID_REVNUM));

  /* If this node is an existing (not newly added) child of a copied node,
     calculate where it was copied from. */
  if (!is_added
      && FUNC0(rb->db->copyfrom_path, rb->db->copyfrom_rev))
    {
      const char *name = FUNC3(relpath, NULL);

      copyfrom_path = FUNC4(rb->db->copyfrom_path, name,
                                       rb->pool);
      copyfrom_rev = rb->db->copyfrom_rev;
    }

  child_db->baton = child_baton;
  child_db->relpath = relpath;
  child_db->copyfrom_path = copyfrom_path;
  child_db->copyfrom_rev = copyfrom_rev;
  child_db->parent = rb->db;
  rb->db = child_db;
}