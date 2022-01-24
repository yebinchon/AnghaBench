#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; int /*<<< orphan*/ * vtable; int /*<<< orphan*/  base_rev; int /*<<< orphan*/ * fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_2__ fs_txn_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_vtable ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_fs_txn_t **txn_p,
           svn_fs_t *fs,
           svn_revnum_t rev,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  svn_fs_txn_t *txn;
  fs_txn_data_t *ftd;
  svn_fs_x__id_t root_id;

  txn = FUNC1(result_pool, sizeof(*txn));
  ftd = FUNC1(result_pool, sizeof(*ftd));

  /* Valid revision number? */
  FUNC0(FUNC4(rev, fs, scratch_pool));

  /* Get the txn_id. */
  FUNC0(FUNC3(&txn->id, &ftd->txn_id, fs, result_pool,
                         scratch_pool));

  txn->fs = fs;
  txn->base_rev = rev;

  txn->vtable = &txn_vtable;
  txn->fsap_data = ftd;
  *txn_p = txn;

  /* Create a new root node for this transaction. */
  FUNC5(&root_id, rev);
  FUNC0(FUNC2(fs, ftd->txn_id, &root_id,
                                          scratch_pool));

  /* Create an empty rev file. */
  FUNC0(FUNC11(
              FUNC8(fs, ftd->txn_id, scratch_pool),
              scratch_pool));

  /* Create an empty rev-lock file. */
  FUNC0(FUNC11(
              FUNC9(fs, ftd->txn_id, scratch_pool),
              scratch_pool));

  /* Create an empty changes file. */
  FUNC0(FUNC11(
              FUNC6(fs, ftd->txn_id, scratch_pool),
              scratch_pool));

  /* Create the next-ids file. */
  FUNC0(FUNC10(
              FUNC7(fs, ftd->txn_id, scratch_pool),
              "0 0\n", scratch_pool));

  return SVN_NO_ERROR;
}