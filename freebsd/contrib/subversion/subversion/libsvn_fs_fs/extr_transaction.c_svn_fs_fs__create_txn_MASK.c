#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; int /*<<< orphan*/ * vtable; int /*<<< orphan*/  base_rev; TYPE_2__* fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svn_fs_txn_t ;
struct TYPE_16__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_17__ {int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_3__ fs_txn_data_t ;
struct TYPE_18__ {scalar_t__ format; } ;
typedef  TYPE_4__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_vtable ; 

svn_error_t *
FUNC12(svn_fs_txn_t **txn_p,
                      svn_fs_t *fs,
                      svn_revnum_t rev,
                      apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_fs_txn_t *txn;
  fs_txn_data_t *ftd;
  svn_fs_id_t *root_id;

  txn = FUNC1(pool, sizeof(*txn));
  ftd = FUNC1(pool, sizeof(*ftd));

  /* Get the txn_id. */
  if (ffd->format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    FUNC0(FUNC3(&txn->id, &ftd->txn_id, fs, rev, pool));
  else
    FUNC0(FUNC4(&txn->id, &ftd->txn_id, fs, rev, pool));

  txn->fs = fs;
  txn->base_rev = rev;

  txn->vtable = &txn_vtable;
  txn->fsap_data = ftd;
  *txn_p = txn;

  /* Create a new root node for this transaction. */
  FUNC0(FUNC9(&root_id, fs, rev, pool, pool));
  FUNC0(FUNC2(fs, &ftd->txn_id, root_id, pool));

  /* Create an empty rev file. */
  FUNC0(FUNC11(
                    FUNC7(fs, &ftd->txn_id, pool),
                    pool));

  /* Create an empty rev-lock file. */
  FUNC0(FUNC11(
               FUNC8(fs, &ftd->txn_id, pool),
               pool));

  /* Create an empty changes file. */
  FUNC0(FUNC11(FUNC5(fs, &ftd->txn_id, pool),
                                   pool));

  /* Create the next-ids file. */
  return FUNC10(FUNC6(fs, &ftd->txn_id, pool),
                            "0 0\n", pool);
}