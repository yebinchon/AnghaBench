#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  created_path; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_7__ {int /*<<< orphan*/  created_path; int /*<<< orphan*/  kind; int /*<<< orphan*/  id; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(dag_node_t **node,
                          svn_fs_t *fs,
                          const svn_fs_id_t *id,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  dag_node_t *new_node;
  node_revision_t *noderev;

  /* Construct the node. */
  new_node = FUNC1(pool, sizeof(*new_node));
  new_node->fs = fs;
  new_node->id = FUNC2(id, pool);

  /* Grab the contents so we can cache some of the immutable parts of it. */
  FUNC0(FUNC3(&noderev, fs, id, trail, pool));

  /* Initialize the KIND and CREATED_PATH attributes */
  new_node->kind = noderev->kind;
  new_node->created_path = noderev->created_path;

  /* Return a fresh new node */
  *node = new_node;
  return SVN_NO_ERROR;
}