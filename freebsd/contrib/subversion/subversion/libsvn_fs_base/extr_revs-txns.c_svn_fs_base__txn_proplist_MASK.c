#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct txn_proplist_args {int /*<<< orphan*/  id; int /*<<< orphan*/ ** table_p; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct txn_proplist_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_txn_proplist ; 

svn_error_t *
FUNC4(apr_hash_t **table_p,
                          svn_fs_txn_t *txn,
                          apr_pool_t *pool)
{
  struct txn_proplist_args args;
  apr_hash_t *table;
  svn_fs_t *fs = txn->fs;

  FUNC0(FUNC2(fs, TRUE));

  args.table_p = &table;
  args.id = txn->id;
  FUNC0(FUNC3(fs, txn_body_txn_proplist, &args,
                                 FALSE, pool));

  *table_p = table ? table : FUNC1(pool);
  return SVN_NO_ERROR;
}