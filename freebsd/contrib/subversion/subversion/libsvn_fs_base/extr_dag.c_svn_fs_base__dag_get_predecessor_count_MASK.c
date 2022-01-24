#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int predecessor_count; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(int *count,
                                       dag_node_t *node,
                                       trail_t *trail,
                                       apr_pool_t *pool)
{
  node_revision_t *noderev;

  FUNC0(FUNC1(&noderev, node->fs, node->id,
                                        trail, pool));
  *count = noderev->predecessor_count;
  return SVN_NO_ERROR;
}