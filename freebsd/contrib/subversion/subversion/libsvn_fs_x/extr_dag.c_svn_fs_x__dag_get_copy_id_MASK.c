#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_5__ {TYPE_1__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  const copy_id; } ;

/* Variables and functions */

const svn_fs_x__id_t *
FUNC0(dag_node_t *node)
{
  return &node->node_revision->copy_id;
}