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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_6__ {TYPE_1__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;
struct TYPE_5__ {int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_boolean_t
FUNC1(dag_node_t *lhs,
                           dag_node_t *rhs)
{
  return FUNC0(&lhs->node_revision->node_id,
                         &rhs->node_revision->node_id);
}