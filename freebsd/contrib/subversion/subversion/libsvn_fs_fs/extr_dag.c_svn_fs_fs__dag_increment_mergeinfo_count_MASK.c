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
struct TYPE_11__ {int mergeinfo_count; scalar_t__ kind; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_12__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_INT64_T_FMT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC8(dag_node_t *node,
                                         apr_int64_t increment,
                                         apr_pool_t *pool)
{
  node_revision_t *noderev;

  /* Sanity check: this node better be mutable! */
  if (! FUNC5(node))
    {
      svn_string_t *idstr = FUNC6(node->id, pool);
      return FUNC4
        (SVN_ERR_FS_NOT_MUTABLE, NULL,
         "Can't increment mergeinfo count on *immutable* node-revision %s",
         idstr->data);
    }

  if (increment == 0)
    return SVN_NO_ERROR;

  /* Go get a fresh NODE-REVISION for this node. */
  FUNC0(FUNC3(&noderev, node));

  noderev->mergeinfo_count += increment;
  if (noderev->mergeinfo_count < 0)
    {
      svn_string_t *idstr = FUNC6(node->id, pool);
      return FUNC4
        (SVN_ERR_FS_CORRUPT, NULL,
         FUNC2(pool,
                      FUNC1("Can't increment mergeinfo count on node-revision %%s "
                        "to negative value %%%s"),
                      APR_INT64_T_FMT),
         idstr->data, noderev->mergeinfo_count);
    }
  if (noderev->mergeinfo_count > 1 && noderev->kind == svn_node_file)
    {
      svn_string_t *idstr = FUNC6(node->id, pool);
      return FUNC4
        (SVN_ERR_FS_CORRUPT, NULL,
         FUNC2(pool,
                      FUNC1("Can't increment mergeinfo count on *file* "
                        "node-revision %%s to %%%s (> 1)"),
                      APR_INT64_T_FMT),
         idstr->data, noderev->mergeinfo_count);
    }

  /* Flush it out. */
  return FUNC7(node->fs, noderev->id,
                                      noderev, FALSE, pool);
}