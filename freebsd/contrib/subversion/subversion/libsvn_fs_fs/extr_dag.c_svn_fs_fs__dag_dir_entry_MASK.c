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
typedef  int /*<<< orphan*/  svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_8__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

svn_error_t *
FUNC5(svn_fs_dirent_t **dirent,
                         dag_node_t *node,
                         const char* name,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  node_revision_t *noderev;
  FUNC0(FUNC2(&noderev, node));

  if (noderev->kind != svn_node_dir)
    return FUNC3(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                            FUNC1("Can't get entries of non-directory"));

  /* Get a dirent hash for this directory. */
  return FUNC4(dirent, node->fs, noderev, name,
                                           result_pool, scratch_pool);
}