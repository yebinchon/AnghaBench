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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct edit_baton {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,struct edit_baton*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(void *baton,
            const char *relpath,
            const svn_checksum_t *checksum,
            svn_stream_t *contents,
            apr_hash_t *props,
            svn_revnum_t replaces_rev,
            apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *fspath = FUNC0(relpath, scratch_pool);
  svn_fs_root_t *root;

  FUNC1(FUNC6(&root, eb));

  if (FUNC2(replaces_rev))
    {
      FUNC1(FUNC5(root, fspath, replaces_rev, scratch_pool));
      FUNC1(FUNC8(root, fspath, scratch_pool));
    }
  else
    {
      FUNC1(FUNC4(root, fspath, scratch_pool));
    }

  FUNC1(FUNC9(root, fspath, scratch_pool));

  FUNC1(FUNC7(root, fspath, checksum, contents,
                   eb->cancel_func, eb->cancel_baton, scratch_pool));
  FUNC1(FUNC3(root, fspath, props, scratch_pool));

  return SVN_NO_ERROR;
}