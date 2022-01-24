#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/ * predecessor_id; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  dag_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(const svn_fs_id_t **id_p,
                                  dag_node_t *node)
{
  node_revision_t *noderev;

  FUNC0(FUNC1(&noderev, node));
  *id_p = noderev->predecessor_id;
  return SVN_NO_ERROR;
}