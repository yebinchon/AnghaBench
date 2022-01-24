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
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_fs_t *fs,
               const char *txn_name,
               apr_hash_t *revprops,
               apr_pool_t *scratch_pool)
{
  svn_fs_txn_t *txn;
  const apr_array_header_t *revprops_array;

  /* The FS editor has a TXN inside it, but we can't access it. Open another
     based on the TXN_NAME.  */
  FUNC0(FUNC1(&txn, fs, txn_name, scratch_pool));

  /* Validate and apply the revision properties.  */
  revprops_array = FUNC2(revprops, scratch_pool);
  FUNC0(FUNC3(txn, revprops_array, scratch_pool));

  /* ### do we need to force the txn to close, or is it enough to wait
     ### for the pool to be cleared?  */
  return SVN_NO_ERROR;
}