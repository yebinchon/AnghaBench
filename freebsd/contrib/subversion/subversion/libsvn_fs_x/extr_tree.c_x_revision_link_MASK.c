#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_root_t *from_root,
                svn_fs_root_t *to_root,
                const char *path,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *subpool;

  if (! to_root->is_txn_root)
    return FUNC1(to_root);

  subpool = FUNC4(scratch_pool);

  path = FUNC3(path, subpool);
  FUNC0(FUNC2(from_root, path, to_root, path, FALSE, subpool));

  FUNC5(subpool);

  return SVN_NO_ERROR;
}