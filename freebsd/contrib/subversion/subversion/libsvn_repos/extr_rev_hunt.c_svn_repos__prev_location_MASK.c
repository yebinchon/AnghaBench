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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char const*) ; 

svn_error_t *
FUNC7(svn_revnum_t *appeared_rev,
                         const char **prev_path,
                         svn_revnum_t *prev_rev,
                         svn_fs_t *fs,
                         svn_revnum_t revision,
                         const char *path,
                         apr_pool_t *pool)
{
  svn_fs_root_t *root, *copy_root;
  const char *copy_path, *copy_src_path, *remainder;
  svn_revnum_t copy_src_rev;

  /* Initialize return variables. */
  if (appeared_rev)
    *appeared_rev = SVN_INVALID_REVNUM;
  if (prev_rev)
    *prev_rev = SVN_INVALID_REVNUM;
  if (prev_path)
    *prev_path = NULL;

  /* Ask about the most recent copy which affected PATH@REVISION.  If
     there was no such copy, we're done.  */
  FUNC0(FUNC3(&root, fs, revision, pool));
  FUNC0(FUNC1(&copy_root, &copy_path, root, path, pool));
  if (! copy_root)
    return SVN_NO_ERROR;

  /* Ultimately, it's not the path of the closest copy's source that
     we care about -- it's our own path's location in the copy source
     revision.  So we'll tack the relative path that expresses the
     difference between the copy destination and our path in the copy
     revision onto the copy source path to determine this information.

     In other words, if our path is "/branches/my-branch/foo/bar", and
     we know that the closest relevant copy was a copy of "/trunk" to
     "/branches/my-branch", then that relative path under the copy
     destination is "/foo/bar".  Tacking that onto the copy source
     path tells us that our path was located at "/trunk/foo/bar"
     before the copy.
  */
  FUNC0(FUNC2(&copy_src_rev, &copy_src_path,
                             copy_root, copy_path, pool));
  remainder = FUNC6(copy_path, path);
  if (prev_path)
    *prev_path = FUNC5(copy_src_path, remainder, pool);
  if (appeared_rev)
    *appeared_rev = FUNC4(copy_root);
  if (prev_rev)
    *prev_rev = copy_src_rev;
  return SVN_NO_ERROR;
}