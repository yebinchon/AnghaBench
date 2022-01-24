#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  base_rev; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/  SVN_FS_TXN_CHECK_OOD ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CHECK_OOD ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC5(svn_fs_root_t **root_p,
                   svn_fs_txn_t *txn,
                   apr_pool_t *pool)
{
  apr_uint32_t flags = 0;
  apr_hash_t *txnprops;

  /* Look for the temporary txn props representing 'flags'. */
  FUNC0(FUNC3(&txnprops, txn, pool));
  if (txnprops)
    {
      if (FUNC4(txnprops, SVN_FS__PROP_TXN_CHECK_OOD))
        flags |= SVN_FS_TXN_CHECK_OOD;

      if (FUNC4(txnprops, SVN_FS__PROP_TXN_CHECK_LOCKS))
        flags |= SVN_FS_TXN_CHECK_LOCKS;
    }

  return FUNC1(root_p, txn->fs, FUNC2(txn),
                       txn->base_rev, flags, pool);
}