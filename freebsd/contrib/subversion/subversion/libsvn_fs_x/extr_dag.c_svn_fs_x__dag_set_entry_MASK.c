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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {TYPE_1__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {scalar_t__ kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 

svn_error_t *
FUNC4(dag_node_t *node,
                        const char *entry_name,
                        const svn_fs_x__id_t *id,
                        svn_node_kind_t kind,
                        svn_fs_x__txn_id_t txn_id,
                        apr_pool_t *scratch_pool)
{
  /* Check it's a directory. */
  if (node->node_revision->kind != svn_node_dir)
    return FUNC2
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       FUNC0("Attempted to set entry in non-directory node"));

  /* Check it's mutable. */
  if (! FUNC3(node))
    return FUNC2
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC0("Attempted to set entry in immutable node"));

  return FUNC1(node, entry_name, id, kind, txn_id, scratch_pool);
}