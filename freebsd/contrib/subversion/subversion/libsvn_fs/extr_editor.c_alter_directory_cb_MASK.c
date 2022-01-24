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
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,struct edit_baton*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                   const char *relpath,
                   svn_revnum_t revision,
                   const apr_array_header_t *children,
                   apr_hash_t *props,
                   apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  const char *fspath = FUNC0(relpath, scratch_pool);
  svn_fs_root_t *root;

  /* Note: we ignore CHILDREN. We have no "incomplete" state to worry about,
     so we don't need to be aware of what children will be created.  */

  FUNC1(FUNC4(&root, eb));
  FUNC1(FUNC3(root, fspath, revision, scratch_pool));

  if (props)
    FUNC1(FUNC2(root, fspath, props, scratch_pool));

  return SVN_NO_ERROR;
}