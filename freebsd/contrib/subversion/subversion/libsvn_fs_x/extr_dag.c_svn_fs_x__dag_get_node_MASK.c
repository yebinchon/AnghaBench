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
typedef  int /*<<< orphan*/  svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/ * node_revision; int /*<<< orphan*/ * node_pool; int /*<<< orphan*/  hint; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(dag_node_t **node,
                       svn_fs_t *fs,
                       const svn_fs_x__id_t *id,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  dag_node_t *new_node;
  svn_fs_x__noderev_t *noderev;

  /* Construct the node. */
  new_node = FUNC1(result_pool, sizeof(*new_node));
  new_node->fs = fs;
  new_node->hint = APR_SIZE_MAX;

  /* Grab the contents so we can inspect the node's kind and created path. */
  FUNC0(FUNC2(&noderev, fs, id,
                                      result_pool, scratch_pool));
  new_node->node_pool = result_pool;
  new_node->node_revision = noderev;

  /* Return a fresh new node */
  *node = new_node;
  return SVN_NO_ERROR;
}