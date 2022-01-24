#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  data_rep; int /*<<< orphan*/  prop_rep; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_boolean_t *props_changed,
                                svn_boolean_t *contents_changed,
                                dag_node_t *node1,
                                dag_node_t *node2,
                                svn_boolean_t strict,
                                apr_pool_t *pool)
{
  node_revision_t *noderev1, *noderev2;

  /* If we have no place to store our results, don't bother doing
     anything. */
  if (! props_changed && ! contents_changed)
    return SVN_NO_ERROR;

  /* The node revision skels for these two nodes. */
  FUNC0(FUNC1(&noderev1, node1));
  FUNC0(FUNC1(&noderev2, node2));

  if (strict)
    {
      /* In strict mode, compare text and property representations in the
         svn_fs_contents_different() / svn_fs_props_different() manner.

         See the "No-op changes no longer dumped by 'svnadmin dump' in 1.9"
         discussion (http://svn.haxx.se/dev/archive-2015-09/0269.shtml) and
         issue #4598 (https://issues.apache.org/jira/browse/SVN-4598). */
      svn_fs_t *fs = FUNC2(node1);
      svn_boolean_t same;

      /* Compare property keys. */
      if (props_changed != NULL)
        {
          FUNC0(FUNC5(&same, fs, noderev1,
                                            noderev2, pool));
          *props_changed = !same;
        }

      /* Compare contents keys. */
      if (contents_changed != NULL)
        {
          FUNC0(FUNC3(&same, fs, noderev1,
                                                 noderev2, pool));
          *contents_changed = !same;
        }
    }
  else
    {
      /* Otherwise, compare representation keys -- as in Subversion 1.8. */

      /* Compare property keys. */
      if (props_changed != NULL)
        *props_changed =
          !FUNC4(noderev1->prop_rep,
                                           noderev2->prop_rep);

      /* Compare contents keys. */
      if (contents_changed != NULL)
        *contents_changed =
          !FUNC4(noderev1->data_rep,
                                           noderev2->data_rep);
    }

  return SVN_NO_ERROR;
}