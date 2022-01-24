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
typedef  int /*<<< orphan*/  svn_string_t ;
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct txn_proplist_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  txn_body_txn_proplist ; 

svn_error_t *
FUNC4(svn_string_t **value_p,
                      svn_fs_txn_t *txn,
                      const char *propname,
                      apr_pool_t *pool)
{
  struct txn_proplist_args args;
  apr_hash_t *table;
  svn_fs_t *fs = txn->fs;

  FUNC0(FUNC1(fs, TRUE));

  /* Get the proplist. */
  args.table_p = &table;
  args.id = txn->id;
  FUNC0(FUNC2(fs, txn_body_txn_proplist, &args,
                                 FALSE, pool));

  /* And then the prop from that list (if there was a list). */
  *value_p = FUNC3(table, propname);

  return SVN_NO_ERROR;
}