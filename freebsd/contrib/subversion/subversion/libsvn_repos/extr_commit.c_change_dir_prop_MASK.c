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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/  txn_root; } ;
struct dir_baton {int /*<<< orphan*/  path; scalar_t__ checked_write; int /*<<< orphan*/  base_rev; struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct edit_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct edit_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_authz_write ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;

  /* Check for write authorization. */
  if (!db->checked_write)
    {
      FUNC0(FUNC2(eb, db->path, eb->txn_root,
                          svn_authz_write, pool));

      if (FUNC1(db->base_rev))
        {
          /* Subversion rule:  propchanges can only happen on a directory
             which is up-to-date. */
          svn_revnum_t created_rev;
          FUNC0(FUNC4(&created_rev,
                                          eb->txn_root, db->path, pool));

          FUNC0(FUNC3(eb, db->path, svn_node_dir,
                                    db->base_rev, created_rev));
        }

      db->checked_write = TRUE; /* Skip on further prop changes */
    }

  return FUNC5(eb->txn_root, db->path,
                                       name, value, pool);
}