#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  base_id; } ;
typedef  TYPE_1__ transaction_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_7__ {TYPE_3__* fsap_data; int /*<<< orphan*/ * vtable; int /*<<< orphan*/  base_rev; int /*<<< orphan*/ * fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_3__ fs_txn_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_TRANSACTION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  txn_vtable ; 

svn_error_t *
FUNC10(svn_fs_txn_t **txn_p,
                    svn_fs_t *fs,
                    const char *name,
                    apr_pool_t *pool)
{
  svn_fs_txn_t *txn;
  fs_txn_data_t *ftd;
  svn_node_kind_t kind;
  transaction_t *local_txn;
  svn_fs_fs__id_part_t txn_id;

  FUNC0(FUNC7(&txn_id, name));

  /* First check to see if the directory exists. */
  FUNC0(FUNC9(FUNC8(fs, &txn_id, pool),
                            &kind, pool));

  /* Did we find it? */
  if (kind != svn_node_dir)
    return FUNC4(SVN_ERR_FS_NO_SUCH_TRANSACTION, NULL,
                             FUNC1("No such transaction '%s'"),
                             name);

  txn = FUNC2(pool, sizeof(*txn));
  ftd = FUNC2(pool, sizeof(*ftd));
  ftd->txn_id = txn_id;

  /* Read in the root node of this transaction. */
  txn->id = FUNC3(pool, name);
  txn->fs = fs;

  FUNC0(FUNC5(&local_txn, fs, &txn_id, pool));

  txn->base_rev = FUNC6(local_txn->base_id);

  txn->vtable = &txn_vtable;
  txn->fsap_data = ftd;
  *txn_p = txn;

  return SVN_NO_ERROR;
}