#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {TYPE_7__* tree; int /*<<< orphan*/  subbranches; } ;
typedef  TYPE_1__ svn_branch__subtree_t ;
struct TYPE_10__ {int /*<<< orphan*/  txn; int /*<<< orphan*/  bid; } ;
typedef  TYPE_2__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_11__ {int /*<<< orphan*/  root_eid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_2__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_branch__state_t *to_branch,
                                   svn_branch__subtree_t elements,
                                   apr_pool_t *scratch_pool)
{
  FUNC0(FUNC4(to_branch, elements.tree,
                                      scratch_pool));

  /* branch any subbranches */
  {
    apr_hash_index_t *hi;

    for (hi = FUNC1(scratch_pool, elements.subbranches);
         hi; hi = FUNC2(hi))
      {
        int this_outer_eid = FUNC7(hi);
        svn_branch__subtree_t *this_subtree = FUNC3(hi);
        const char *new_branch_id;
        svn_branch__state_t *new_branch;
        /*### svn_branch__history_t *history;*/

        /* branch this subbranch into NEW_BRANCH (recursing) */
        new_branch_id = FUNC5(to_branch->bid, this_outer_eid,
                                            scratch_pool);
        FUNC0(FUNC6(to_branch->txn, &new_branch,
                                            new_branch_id,
                                            this_subtree->tree->root_eid,
                                            NULL /*tree_ref*/,
                                            scratch_pool, scratch_pool));
        /*### SVN_ERR(svn_branch__state_set_history(new_branch, history,
                                              scratch_pool));*/

        FUNC0(FUNC8(new_branch, *this_subtree,
                                                   scratch_pool));
      }
  }

  return SVN_NO_ERROR;
}