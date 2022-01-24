#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  has_mergeinfo; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_12__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(dag_node_t *node,
                                 svn_boolean_t has_mergeinfo,
                                 apr_pool_t *pool)
{
  node_revision_t *noderev;

  /* Sanity check: this node better be mutable! */
  if (! FUNC3(node))
    {
      svn_string_t *idstr = FUNC4(node->id, pool);
      return FUNC2
        (SVN_ERR_FS_NOT_MUTABLE, NULL,
         "Can't set mergeinfo flag on *immutable* node-revision %s",
         idstr->data);
    }

  /* Go get a fresh NODE-REVISION for this node. */
  FUNC0(FUNC1(&noderev, node));

  noderev->has_mergeinfo = has_mergeinfo;

  /* Flush it out. */
  return FUNC5(node->fs, noderev->id,
                                      noderev, FALSE, pool);
}