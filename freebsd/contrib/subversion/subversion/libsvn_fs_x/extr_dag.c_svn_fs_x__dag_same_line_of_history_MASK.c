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
struct TYPE_5__ {int /*<<< orphan*/  copy_id; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int svn_boolean_t ;
struct TYPE_6__ {TYPE_1__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_boolean_t
FUNC1(dag_node_t *lhs,
                                   dag_node_t *rhs)
{
  svn_fs_x__noderev_t *lhs_noderev = lhs->node_revision;
  svn_fs_x__noderev_t *rhs_noderev = rhs->node_revision;

  return FUNC0(&lhs_noderev->node_id, &rhs_noderev->node_id)
      && FUNC0(&lhs_noderev->copy_id, &rhs_noderev->copy_id);
}