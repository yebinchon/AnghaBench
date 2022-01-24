#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * node_pool; int /*<<< orphan*/  node_revision; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

dag_node_t *
FUNC2(const dag_node_t *node,
                  apr_pool_t *result_pool)
{
  /* Allocate our new node. */
  dag_node_t *new_node = FUNC0(result_pool, node, sizeof(*new_node));

  /* Copy sub-structures. */
  new_node->node_revision = FUNC1(node->node_revision,
                                               result_pool);
  new_node->node_pool = result_pool;

  return new_node;
}