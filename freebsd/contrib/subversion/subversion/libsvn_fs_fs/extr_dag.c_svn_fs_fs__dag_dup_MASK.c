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
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * node_pool; TYPE_5__* node_revision; int /*<<< orphan*/  created_path; int /*<<< orphan*/  kind; void* id; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  is_fresh_txn_root; void* id; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ *) ; 

dag_node_t *
FUNC5(const dag_node_t *node,
                   apr_pool_t *pool)
{
  /* Allocate our new node. */
  dag_node_t *new_node = FUNC0(pool, sizeof(*new_node));

  new_node->fs = node->fs;
  new_node->id = FUNC4(node->id, pool);
  new_node->kind = node->kind;
  new_node->created_path = FUNC1(pool, node->created_path);

  /* Only copy cached node_revision_t for immutable nodes. */
  if (node->node_revision && !FUNC3(node))
    {
      new_node->node_revision = FUNC2(node->node_revision, pool);
      new_node->node_revision->id =
          FUNC4(node->node_revision->id, pool);
      new_node->node_revision->is_fresh_txn_root =
          node->node_revision->is_fresh_txn_root;
    }
  new_node->node_pool = pool;

  return new_node;
}