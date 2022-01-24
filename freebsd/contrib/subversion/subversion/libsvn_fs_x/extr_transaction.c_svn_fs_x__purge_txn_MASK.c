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
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_fs_t *fs,
                    const char *txn_id_str,
                    apr_pool_t *scratch_pool)
{
  svn_fs_x__txn_id_t txn_id;

  /* The functions we are calling open files and operate on the OS FS.
     Since these may allocate a non-trivial amount of memory, do that
     in a SUBPOOL and clear that one up before returning. */
  apr_pool_t *subpool = FUNC8(scratch_pool);
  FUNC0(FUNC5(&txn_id, txn_id_str));

  /* Remove the shared transaction object associated with this transaction. */
  FUNC0(FUNC1(fs, txn_id, subpool));
  /* Remove the directory associated with this transaction. */
  FUNC0(FUNC6(FUNC2(fs, txn_id, subpool),
                             FALSE, NULL, NULL, subpool));

  /* Delete protorev and its lock, which aren't in the txn directory.
     It's OK if they don't exist (for example, if this is post-commit
     and the proto-rev has been moved into place). */
  FUNC0(FUNC7(
                FUNC3(fs, txn_id, subpool),
                TRUE, subpool));
  FUNC0(FUNC7(
                FUNC4(fs, txn_id, subpool),
                TRUE, subpool));

  FUNC9(subpool);
  return SVN_NO_ERROR;
}