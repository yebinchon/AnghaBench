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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_3__ {int /*<<< orphan*/ * node_revision; int /*<<< orphan*/  node_pool; int /*<<< orphan*/  id; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(node_revision_t **noderev_p,
                  dag_node_t *node)
{
  /* If we've already got a copy, there's no need to read it in.  */
  if (! node->node_revision)
    {
      node_revision_t *noderev;
      apr_pool_t *scratch_pool = FUNC2(node->node_pool);

      FUNC0(FUNC1(&noderev, node->fs,
                                           node->id, node->node_pool,
                                           scratch_pool));
      node->node_revision = noderev;
      FUNC3(scratch_pool);
    }

  /* Now NODE->node_revision is set.  */
  *noderev_p = node->node_revision;
  return SVN_NO_ERROR;
}