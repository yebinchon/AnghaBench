#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ data_key; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_6__ {scalar_t__ kind; int /*<<< orphan*/  fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC5(svn_filesize_t *length,
                             dag_node_t *file,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  node_revision_t *noderev;

  /* Make sure our node is a file. */
  if (file->kind != svn_node_file)
    return FUNC2
      (SVN_ERR_FS_NOT_FILE, NULL,
       FUNC1("Attempted to get length of a *non*-file node"));

  /* Go get a fresh node-revision for FILE, and . */
  FUNC0(FUNC4(&noderev, file->fs, file->id,
                                        trail, pool));
  if (noderev->data_key)
    FUNC0(FUNC3(length, file->fs,
                                           noderev->data_key, trail, pool));
  else
    *length = 0;

  return SVN_NO_ERROR;
}