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
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HASH_KEY_STRING ; 
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL_VALUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs_contents ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,struct edit_baton*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(void *baton,
               const char *relpath,
               const char *target,
               apr_hash_t *props,
               svn_revnum_t replaces_rev,
               apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *fspath = FUNC0(relpath, scratch_pool);
  svn_fs_root_t *root;

  FUNC1(FUNC8(&root, eb));

  if (FUNC2(replaces_rev))
    {
      FUNC1(FUNC7(root, fspath, replaces_rev, scratch_pool));
      FUNC1(FUNC10(root, fspath, scratch_pool));
    }
  else
    {
      FUNC1(FUNC6(root, fspath, scratch_pool));
    }

  /* ### we probably need to construct a file with specific contents
     ### (until the FS grows some symlink APIs)  */
#if 0
  SVN_ERR(svn_fs_make_file(root, fspath, scratch_pool));
  SVN_ERR(svn_fs_apply_text(&fs_contents, root, fspath,
                            NULL /* result_checksum */,
                            scratch_pool));
  /* ### SVN_ERR(svn_stream_printf(fs_contents, ..., scratch_pool));  */
  apr_hash_set(props, SVN_PROP_SPECIAL, APR_HASH_KEY_STRING,
               SVN_PROP_SPECIAL_VALUE);

  SVN_ERR(add_new_props(root, fspath, props, scratch_pool));
#endif

  FUNC3();
}