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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 scalar_t__ svn_node_dir ; 

svn_error_t *
FUNC4(dag_node_t *node,
                           const char *entry_name,
                           const svn_fs_id_t *id,
                           const char *txn_id,
                           trail_t *trail,
                           apr_pool_t *pool)
{
  /* Check it's a directory. */
  if (node->kind != svn_node_dir)
    return FUNC2
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       FUNC0("Attempted to set entry in non-directory node"));

  /* Check it's mutable. */
  if (! FUNC3(node, txn_id))
    return FUNC2
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC0("Attempted to set entry in immutable node"));

  return FUNC1(node, entry_name, id, txn_id, trail, pool);
}