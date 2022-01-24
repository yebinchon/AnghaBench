#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  rights; } ;
struct TYPE_15__ {int /*<<< orphan*/  max_rights; int /*<<< orphan*/  min_rights; TYPE_1__ access; } ;
struct TYPE_14__ {TYPE_2__* pattern_sub_nodes; int /*<<< orphan*/  sub_nodes; TYPE_4__ rights; } ;
typedef  TYPE_3__ node_t ;
typedef  TYPE_4__ limited_rights_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  suffixes; int /*<<< orphan*/  prefixes; int /*<<< orphan*/  complex; TYPE_3__* any_var; TYPE_3__* any; } ;

/* Variables and functions */
 int /*<<< orphan*/  authz_access_none ; 
 int /*<<< orphan*/  authz_access_write ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(node_t *node,
              limited_rights_t *sum,
              apr_pool_t *scratch_pool)
{
  limited_rights_t *local_sum = &node->rights;

  /* For convenience, we allow NODE to be NULL: */
  if (!node)
    return;

  /* Sum of rights at NODE - so far. */
  if (FUNC3(local_sum))
    {
      local_sum->max_rights = local_sum->access.rights;
      local_sum->min_rights = local_sum->access.rights;
    }
  else
    {
      local_sum->min_rights = authz_access_write;
      local_sum->max_rights = authz_access_none;
    }

  /* Process all sub-nodes. */
  FUNC2(node->sub_nodes, local_sum, scratch_pool);

  if (node->pattern_sub_nodes)
    {
      FUNC5(node->pattern_sub_nodes->any, local_sum, scratch_pool);
      FUNC5(node->pattern_sub_nodes->any_var, local_sum, scratch_pool);

      FUNC1(node->pattern_sub_nodes->prefixes, local_sum,
                             scratch_pool);
      FUNC1(node->pattern_sub_nodes->suffixes, local_sum,
                             scratch_pool);
      FUNC1(node->pattern_sub_nodes->complex, local_sum,
                             scratch_pool);

      /* Link up the prefixes / suffixes. */
      FUNC4(node->pattern_sub_nodes->prefixes);
      FUNC4(node->pattern_sub_nodes->suffixes);
    }

  /* Add our min / max info to the parent's info.
   * Idempotent for parent == node (happens at root). */
  FUNC0(sum, local_sum);
}