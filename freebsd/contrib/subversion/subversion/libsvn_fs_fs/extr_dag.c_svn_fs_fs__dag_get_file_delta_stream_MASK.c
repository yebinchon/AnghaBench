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
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC4(svn_txdelta_stream_t **stream_p,
                                     dag_node_t *source,
                                     dag_node_t *target,
                                     apr_pool_t *pool)
{
  node_revision_t *src_noderev;
  node_revision_t *tgt_noderev;

  /* Make sure our nodes are files. */
  if ((source && source->kind != svn_node_file)
      || target->kind != svn_node_file)
    return FUNC2
      (SVN_ERR_FS_NOT_FILE, NULL,
       "Attempted to get textual contents of a *non*-file node");

  /* Go get fresh node-revisions for the nodes. */
  if (source)
    FUNC0(FUNC1(&src_noderev, source));
  else
    src_noderev = NULL;
  FUNC0(FUNC1(&tgt_noderev, target));

  /* Get the delta stream. */
  return FUNC3(stream_p, target->fs,
                                          src_noderev, tgt_noderev, pool);
}