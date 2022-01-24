#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ trail_t ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  fs; } ;
typedef  TYPE_3__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ transaction_kind_dead ; 
 scalar_t__ transaction_kind_normal ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, trail_t *trail)
{
  svn_fs_txn_t *txn = baton;
  transaction_t *fstxn;

  /* Get the transaction by its id, set it to "dead", and store the
     transaction. */
  FUNC0(FUNC1(&fstxn, txn->fs, txn->id, FALSE, trail, trail->pool));
  if (fstxn->kind != transaction_kind_normal)
    return FUNC3(txn->fs, txn->id);

  fstxn->kind = transaction_kind_dead;
  return FUNC2(txn->fs, fstxn, txn->id, trail, trail->pool);
}