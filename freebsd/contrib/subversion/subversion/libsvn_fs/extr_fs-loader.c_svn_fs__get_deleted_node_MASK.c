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
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_fs_root_t **node_root,
                         const char **node_path,
                         svn_fs_root_t *root,
                         const char *path,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  const char *parent_path, *name;
  svn_fs_root_t *copy_root;
  const char *copy_path;

  /* History traversal does not work with transaction roots.
   * Therefore, do it "by hand". */

  /* If the parent got copied in ROOT, PATH got copied with it.
   * Otherwise, we will find the node at PATH in the revision prior to ROOT.
   */
  FUNC11(&parent_path, &name, path, scratch_pool);
  FUNC0(FUNC3(&copy_root, &copy_path, root, parent_path,
                              scratch_pool));

  /* Copied in ROOT? */
  if (   copy_root
      && (   FUNC6(copy_root)
          == FUNC6(root)))
    {
      svn_revnum_t copyfrom_rev;
      const char *copyfrom_path;
      const char *rel_path;
      FUNC0(FUNC4(&copyfrom_rev, &copyfrom_path,
                                 copy_root, copy_path, scratch_pool));

      FUNC0(FUNC5(node_root, FUNC7(root),
                                   copyfrom_rev, result_pool));
      rel_path = FUNC10(copy_path, path);
      *node_path = FUNC9(copyfrom_path, rel_path, result_pool);
    }
  else
    {
      svn_revnum_t revision;
      svn_revnum_t previous_rev;

      /* Determine the latest revision before ROOT. */
      revision = FUNC6(root);
      if (FUNC1(revision))
        previous_rev = revision - 1;
      else
        previous_rev = FUNC8(root);

      FUNC0(FUNC5(node_root, FUNC7(root),
                                   previous_rev, result_pool));
      *node_path = FUNC2(result_pool, path);
    }

  return SVN_NO_ERROR;
}