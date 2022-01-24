#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct edit_baton {int /*<<< orphan*/  txn; int /*<<< orphan*/  fs; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(apr_hash_t **props,
                 void *baton,
                 const char *path,
                 svn_revnum_t base_revision,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_fs_root_t *fs_root;
  svn_error_t *err;

  FUNC0(FUNC5(&fs_root, eb->fs,
                               FUNC6(eb->txn),
                               scratch_pool));
  err = FUNC4(props, fs_root, path, result_pool);
  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      FUNC2(err);
      *props = FUNC1(result_pool);
      return SVN_NO_ERROR;
    }
  else if (err)
    return FUNC3(err);

  return SVN_NO_ERROR;
}