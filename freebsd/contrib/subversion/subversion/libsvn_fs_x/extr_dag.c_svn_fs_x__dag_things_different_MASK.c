#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data_rep; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_9__ {TYPE_1__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_boolean_t *props_changed,
                               svn_boolean_t *contents_changed,
                               dag_node_t *node1,
                               dag_node_t *node2,
                               svn_boolean_t strict,
                               apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev1 = node1->node_revision;
  svn_fs_x__noderev_t *noderev2 = node2->node_revision;
  svn_fs_t *fs;
  svn_boolean_t same;

  /* If we have no place to store our results, don't bother doing
     anything. */
  if (! props_changed && ! contents_changed)
    return SVN_NO_ERROR;

  fs = FUNC1(node1);

  /* Compare property keys. */
  if (props_changed != NULL)
    {
      FUNC0(FUNC3(&same, fs, noderev1, noderev2,
                                       strict, scratch_pool));
      *props_changed = !same;
    }

  /* Compare contents keys. */
  if (contents_changed != NULL)
    *contents_changed = !FUNC2(noderev1->data_rep,
                                                       noderev2->data_rep);

  return SVN_NO_ERROR;
}