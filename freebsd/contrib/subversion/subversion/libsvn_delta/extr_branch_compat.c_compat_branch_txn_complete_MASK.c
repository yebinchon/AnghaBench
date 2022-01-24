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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_branch__txn_t ;
struct TYPE_8__ {int /*<<< orphan*/  txn; int /*<<< orphan*/  dedit_baton; TYPE_1__* deditor; } ;
typedef  TYPE_3__ svn_branch__txn_priv_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* abort_edit ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close_edit ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_branch__txn_t *txn,
                           apr_pool_t *scratch_pool)
{
  svn_branch__txn_priv_t *eb = txn->priv;
  svn_error_t *err;

  /* Convert the transaction to a revision */
  FUNC0(FUNC6(txn->priv->txn, scratch_pool));
  FUNC0(FUNC5(txn->priv->txn, scratch_pool));

  err = FUNC1(eb, scratch_pool);

  if (!err)
     {
       err = FUNC8(err, eb->deditor->close_edit(
                                                            eb->dedit_baton,
                                                            scratch_pool));
     }

  if (err)
    FUNC7(eb->deditor->abort_edit(eb->dedit_baton, scratch_pool));

  FUNC0(FUNC4(txn->priv->txn, scratch_pool));

  return err;
}