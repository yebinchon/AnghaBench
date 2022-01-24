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
struct TYPE_7__ {int /*<<< orphan*/  predecessor_count; int /*<<< orphan*/  noderev_id; int /*<<< orphan*/  predecessor_id; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {TYPE_1__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

svn_error_t *
FUNC4(dag_node_t *target,
                              dag_node_t *source,
                              apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *source_noderev = source->node_revision;
  svn_fs_x__noderev_t *target_noderev = target->node_revision;

  if (! FUNC3(target))
    return FUNC2
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC0("Attempted to update ancestry of non-mutable node"));

  target_noderev->predecessor_id = source_noderev->noderev_id;
  target_noderev->predecessor_count = source_noderev->predecessor_count;
  target_noderev->predecessor_count++;

  return FUNC1(target, scratch_pool);
}