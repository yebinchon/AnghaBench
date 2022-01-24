#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {int /*<<< orphan*/ * copy_src_path; int /*<<< orphan*/  copy_inherit; struct TYPE_8__* parent; int /*<<< orphan*/  entry; int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ svn_fs_x__dag_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_x__copy_id_inherit_unknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_fs_x__dag_path_t *
FUNC3(dag_node_t *node,
                 const svn_stringbuf_t *entry,
                 svn_fs_x__dag_path_t *parent,
                 apr_pool_t *result_pool)
{
  svn_fs_x__dag_path_t *dag_path
    = FUNC0(result_pool, sizeof(*dag_path));
  if (node)
    dag_path->node = FUNC2(node, result_pool);
  dag_path->entry = FUNC1(result_pool, entry->data, entry->len);
  dag_path->parent = parent;
  dag_path->copy_inherit = svn_fs_x__copy_id_inherit_unknown;
  dag_path->copy_src_path = NULL;
  return dag_path;
}