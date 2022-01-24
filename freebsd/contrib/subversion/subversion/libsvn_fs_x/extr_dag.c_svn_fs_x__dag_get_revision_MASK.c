#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_7__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_9__ {TYPE_2__ noderev_id; TYPE_1__ predecessor_id; } ;
typedef  TYPE_3__ svn_fs_x__noderev_t ;
struct TYPE_10__ {TYPE_3__* node_revision; } ;
typedef  TYPE_4__ dag_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 

svn_revnum_t
FUNC2(const dag_node_t *node)
{
  svn_fs_x__noderev_t *noderev = node->node_revision;
  return (  FUNC1(noderev)
          ? FUNC0(noderev->predecessor_id.change_set)
          : FUNC0(noderev->noderev_id.change_set));
}