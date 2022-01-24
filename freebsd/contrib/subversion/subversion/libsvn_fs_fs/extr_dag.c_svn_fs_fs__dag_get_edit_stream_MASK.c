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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC5(svn_stream_t **contents,
                               dag_node_t *file,
                               apr_pool_t *pool)
{
  node_revision_t *noderev;
  svn_stream_t *ws;

  /* Make sure our node is a file. */
  if (file->kind != svn_node_file)
    return FUNC2
      (SVN_ERR_FS_NOT_FILE, NULL,
       "Attempted to set textual contents of a *non*-file node");

  /* Make sure our node is mutable. */
  if (! FUNC3(file))
    return FUNC2
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       "Attempted to set textual contents of an immutable node");

  /* Get the node revision. */
  FUNC0(FUNC1(&noderev, file));

  FUNC0(FUNC4(&ws, file->fs, noderev, pool));

  *contents = ws;

  return SVN_NO_ERROR;
}