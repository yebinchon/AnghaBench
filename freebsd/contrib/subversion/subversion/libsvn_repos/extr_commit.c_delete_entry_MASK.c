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
typedef  int /*<<< orphan*/  svn_repos_authz_access_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/  txn_root; int /*<<< orphan*/  base_path; } ;
struct dir_baton {char const* path; struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edit_baton*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct edit_baton*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  svn_authz_recursive ; 
 int /*<<< orphan*/  svn_authz_write ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *parent = parent_baton;
  struct edit_baton *eb = parent->edit_baton;
  svn_node_kind_t kind;
  svn_repos_authz_access_t required = svn_authz_write;
  const char *full_path;

  full_path = FUNC9(eb->base_path,
                               FUNC10(path, pool), pool);

  /* Check PATH in our transaction.  */
  FUNC0(FUNC6(&kind, eb->txn_root, full_path, pool));

  /* Deletion requires a recursive write access, as well as write
     access to the parent directory. */
  if (kind == svn_node_dir)
    required |= svn_authz_recursive;
  FUNC0(FUNC2(eb, full_path, eb->txn_root,
                      required, pool));
  FUNC0(FUNC2(eb, parent->path, eb->txn_root,
                      svn_authz_write, pool));

  /* If PATH doesn't exist in the txn, the working copy is out of date. */
  if (kind == svn_node_none)
    return FUNC5(FUNC4(full_path, kind));

  /* Now, make sure we're deleting the node we *think* we're
     deleting, else return an out-of-dateness error. */
  if (FUNC1(revision))
    {
      svn_revnum_t cr_rev;

      FUNC0(FUNC8(&cr_rev, eb->txn_root, full_path, pool));
      FUNC0(FUNC3(eb, full_path, kind, revision, cr_rev));
    }

  /* This routine is a mindless wrapper.  We call svn_fs_delete()
     because that will delete files and recursively delete
     directories.  */
  return FUNC5(FUNC7(eb->txn_root, full_path, pool));
}