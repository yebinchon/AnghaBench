#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  created_path; int /*<<< orphan*/ * node_pool; int /*<<< orphan*/  node_revision; int /*<<< orphan*/  fresh_root_predecessor_id; int /*<<< orphan*/ * id; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void**) ; 

svn_error_t *
FUNC5(void **out,
                           void *data,
                           apr_size_t data_len,
                           apr_pool_t *pool)
{
  dag_node_t *node = (dag_node_t *)data;
  if (data_len == 0)
    return FUNC1(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC0("Empty noderev in cache"));

  /* Copy the _full_ buffer as it also contains the sub-structures. */
  node->fs = NULL;

  /* fixup all references to sub-structures */
  FUNC2(node, &node->id);
  FUNC2(node,
                            (svn_fs_id_t **)&node->fresh_root_predecessor_id);
  FUNC3(node, &node->node_revision);
  node->node_pool = pool;

  FUNC4(node, (void**)&node->created_path);

  /* return result */
  *out = node;

  return SVN_NO_ERROR;
}