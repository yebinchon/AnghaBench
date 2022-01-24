#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  predecessor_count; int /*<<< orphan*/  predecessor_id; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_10__ {int /*<<< orphan*/  id; int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(dag_node_t *target,
                               dag_node_t *source,
                               apr_pool_t *pool)
{
  node_revision_t *source_noderev, *target_noderev;

  if (! FUNC4(target))
    return FUNC3
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC1("Attempted to update ancestry of non-mutable node"));

  FUNC0(FUNC2(&source_noderev, source));
  FUNC0(FUNC2(&target_noderev, target));

  target_noderev->predecessor_id = source->id;
  target_noderev->predecessor_count = source_noderev->predecessor_count;
  target_noderev->predecessor_count++;

  return FUNC5(target->fs, target->id, target_noderev,
                                      FALSE, pool);
}