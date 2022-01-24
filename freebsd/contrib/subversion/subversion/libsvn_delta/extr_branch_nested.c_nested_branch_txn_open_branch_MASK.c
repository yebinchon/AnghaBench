#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_branch__txn_t ;
typedef  int /*<<< orphan*/  svn_branch__subtree_t ;
typedef  int /*<<< orphan*/  svn_branch__state_t ;
struct TYPE_10__ {int /*<<< orphan*/  eid; } ;
typedef  TYPE_3__ svn_branch__rev_bid_eid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  wrapped_txn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const*,int,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_branch__txn_t *txn,
                              svn_branch__state_t **new_branch_p,
                              const char *new_branch_id,
                              int root_eid,
                              svn_branch__rev_bid_eid_t *tree_ref,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_branch__state_t *new_branch;

  FUNC0(FUNC4(txn->priv->wrapped_txn,
                                      &new_branch,
                                      new_branch_id, root_eid, tree_ref,
                                      result_pool,
                                      scratch_pool));

  /* Recursively branch any nested branches */
  if (tree_ref)
    {
      svn_branch__state_t *from_branch;
      svn_branch__subtree_t *from_subtree;

      /* (The way we're doing it here also redundantly re-instantiates all the
         elements in NEW_BRANCH.) */
      FUNC0(FUNC1(&from_branch, tree_ref,
                                   txn->priv->wrapped_txn, scratch_pool));
      FUNC0(FUNC2(from_branch, &from_subtree,
                                      tree_ref->eid, scratch_pool));
      FUNC0(FUNC3(new_branch, *from_subtree,
                                                 scratch_pool));
    }

  if (new_branch_p)
    *new_branch_p = new_branch;
  return SVN_NO_ERROR;
}