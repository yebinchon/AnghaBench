#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

svn_error_t *
FUNC7(dag_node_t **child_p,
                      dag_node_t *parent,
                      const char *name,
                      trail_t *trail,
                      apr_pool_t *pool)
{
  const svn_fs_id_t *node_id;

  /* Ensure that NAME exists in PARENT's entry list. */
  FUNC0(FUNC2(&node_id, parent, name, trail, pool));
  if (! node_id)
    return FUNC3
      (SVN_ERR_FS_NOT_FOUND, NULL,
       FUNC1("Attempted to open non-existent child node '%s'"), name);

  /* Make sure that NAME is a single path component. */
  if (! FUNC6(name))
    return FUNC3
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       FUNC1("Attempted to open node with an illegal name '%s'"), name);

  /* Now get the node that was requested. */
  return FUNC5(child_p, FUNC4(parent),
                                   node_id, trail, pool);
}