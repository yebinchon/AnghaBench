#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ kind; int /*<<< orphan*/  revision; int /*<<< orphan*/ * base_id; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ transaction_kind_committed ; 
 scalar_t__ transaction_kind_normal ; 

svn_error_t *
FUNC6(svn_fs_t *fs,
                                const char *txn_name,
                                svn_revnum_t revision,
                                trail_t *trail,
                                apr_pool_t *pool)
{
  transaction_t *txn;

  FUNC1(FUNC2(revision));

  /* Make sure the TXN is not committed already. */
  FUNC0(FUNC3(&txn, fs, txn_name, FALSE, trail, pool));
  if (txn->kind != transaction_kind_normal)
    return FUNC5(fs, txn_name);

  /* Convert TXN to a committed transaction. */
  txn->base_id = NULL;
  txn->revision = revision;
  txn->kind = transaction_kind_committed;
  return FUNC4(fs, txn, txn_name, trail, pool);
}