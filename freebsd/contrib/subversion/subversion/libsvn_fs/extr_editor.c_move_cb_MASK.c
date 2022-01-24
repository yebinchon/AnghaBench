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
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,struct edit_baton*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(void *baton,
        const char *src_relpath,
        svn_revnum_t src_revision,
        const char *dst_relpath,
        svn_revnum_t replaces_rev,
        apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *src_fspath = FUNC0(src_relpath, scratch_pool);
  const char *dst_fspath = FUNC0(dst_relpath, scratch_pool);
  svn_fs_root_t *root;
  svn_fs_root_t *src_root;

  FUNC1(FUNC5(&root, eb));

  /* Check if we delete the specified source (revision), and can we replace
     the maybe-specified destination (revision).  */
  FUNC1(FUNC4(root, src_fspath, src_revision, scratch_pool));
  if (FUNC2(replaces_rev))
    {
      FUNC1(FUNC4(root, dst_fspath, replaces_rev, scratch_pool));
      FUNC1(FUNC8(root, dst_fspath, scratch_pool));
    }
  else
    {
      FUNC1(FUNC3(root, dst_fspath, scratch_pool));
    }

  /* ### would be nice to have svn_fs_move()  */

  /* Copy the src to the dst. */
  FUNC1(FUNC9(&src_root, FUNC10(root), src_revision,
                               scratch_pool));
  FUNC1(FUNC7(src_root, src_fspath, root, dst_fspath, scratch_pool));
  FUNC6(src_root);

  /* Notice: we're deleting the src repos path from the dst root. */
  FUNC1(FUNC8(root, src_fspath, scratch_pool));

  return SVN_NO_ERROR;
}