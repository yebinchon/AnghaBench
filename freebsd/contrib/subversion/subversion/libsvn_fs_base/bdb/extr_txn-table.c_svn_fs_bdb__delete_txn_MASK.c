#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  transaction_t ;
struct TYPE_13__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_14__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {TYPE_10__* transactions; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* del ) (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_2__*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                       const char *txn_name,
                       trail_t *trail,
                       apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key;
  transaction_t *txn;

  /* Make sure TXN is dead. */
  FUNC2(FUNC8(&txn, fs, txn_name, trail, pool));
  if (FUNC3(txn))
    return FUNC5(fs, txn_name);

  /* Delete the transaction from the `transactions' table. */
  FUNC6(&key, txn_name);
  FUNC7(trail, "transactions", "del");
  return FUNC0(fs, FUNC1("deleting entry from 'transactions' table"),
                  bfd->transactions->del(bfd->transactions,
                                         trail->db_txn, &key, 0));
}