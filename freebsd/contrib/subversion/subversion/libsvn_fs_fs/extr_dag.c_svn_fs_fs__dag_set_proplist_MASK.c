#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_8__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(dag_node_t *node,
                            apr_hash_t *proplist,
                            apr_pool_t *pool)
{
  node_revision_t *noderev;

  /* Sanity check: this node better be mutable! */
  if (! FUNC3(node))
    {
      svn_string_t *idstr = FUNC4(node->id, pool);
      return FUNC2
        (SVN_ERR_FS_NOT_MUTABLE, NULL,
         "Can't set proplist on *immutable* node-revision %s",
         idstr->data);
    }

  /* Go get a fresh NODE-REVISION for this node. */
  FUNC0(FUNC1(&noderev, node));

  /* Set the new proplist. */
  return FUNC5(node->fs, noderev, proplist, pool);
}