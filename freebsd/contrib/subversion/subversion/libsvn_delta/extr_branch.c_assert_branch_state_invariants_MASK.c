#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv; TYPE_5__* txn; TYPE_5__* bid; } ;
typedef  TYPE_2__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_9__ {struct TYPE_9__* e_map; } ;
struct TYPE_7__ {TYPE_5__* element_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const svn_branch__state_t *branch,
                               apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  FUNC3(branch->bid);
  FUNC3(branch->txn);
  FUNC3(branch->priv->element_tree);
  FUNC3(branch->priv->element_tree->e_map);

  /* Validate elements in the map */
  for (hi = FUNC0(scratch_pool, branch->priv->element_tree->e_map);
       hi; hi = FUNC1(hi))
    {
      FUNC4(branch, FUNC5(hi),
                              FUNC2(hi));
    }
}