#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; scalar_t__ prop_key; scalar_t__ data_key; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC3(dag_node_t *node,
                                 trail_t *trail,
                                 apr_pool_t *pool)
{
  node_revision_t *node_rev;

  FUNC0(FUNC2(&node_rev, trail->fs, node->id,
                                        trail, pool));
  if ((node_rev->kind == svn_node_file) && node_rev->data_key)
    FUNC0(FUNC1(node_rev->data_key, trail, pool));
  if (node_rev->prop_key)
    FUNC0(FUNC1(node_rev->prop_key, trail, pool));

  return SVN_NO_ERROR;
}