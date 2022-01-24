#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_process_contents_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_4__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_boolean_t *success,
                                         dag_node_t *node,
                                         svn_fs_process_contents_func_t processor,
                                         void* baton,
                                         apr_pool_t *pool)
{
  node_revision_t *noderev;

  /* Go get fresh node-revisions for the nodes. */
  FUNC0(FUNC1(&noderev, node));

  return FUNC2(success, node->fs,
                                              noderev,
                                              processor, baton, pool);
}