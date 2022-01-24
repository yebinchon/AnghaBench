#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {TYPE_4__* node_revision; int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_10__ {int /*<<< orphan*/  noderev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

svn_error_t *
FUNC6(dag_node_t *node,
                           apr_hash_t *proplist,
                           apr_pool_t *scratch_pool)
{
  /* Sanity check: this node better be mutable! */
  if (! FUNC2(node))
    {
      svn_string_t *idstr
        = FUNC3(&node->node_revision->noderev_id,
                               scratch_pool);
      return FUNC1
        (SVN_ERR_FS_NOT_MUTABLE, NULL,
         "Can't set proplist on *immutable* node-revision %s",
         idstr->data);
    }

  /* Set the new proplist. */
  FUNC0(FUNC4(node->fs, node->node_revision, proplist,
                                 scratch_pool));
  FUNC5(node);

  return SVN_NO_ERROR;
}