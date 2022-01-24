#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  prop_key; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_10__ {int /*<<< orphan*/  id; int /*<<< orphan*/  fs; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(apr_hash_t **proplist_p,
                              dag_node_t *node,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  node_revision_t *noderev;
  apr_hash_t *proplist = NULL;
  svn_string_t raw_proplist;
  svn_skel_t *proplist_skel;

  /* Go get a fresh NODE-REVISION for this node. */
  FUNC0(FUNC3(&noderev, node->fs, node->id,
                                        trail, pool));

  /* Get property key (returning early if there isn't one) . */
  if (! noderev->prop_key)
    {
      *proplist_p = NULL;
      return SVN_NO_ERROR;
    }

  /* Get the string associated with the property rep, parsing it as a
     skel, and then attempt to parse *that* into a property hash.  */
  FUNC0(FUNC2(&raw_proplist,
                                    FUNC1(node),
                                    noderev->prop_key, trail, pool));
  proplist_skel = FUNC4(raw_proplist.data, raw_proplist.len, pool);
  if (proplist_skel)
    FUNC0(FUNC5(&proplist, proplist_skel, pool));

  *proplist_p = proplist;
  return SVN_NO_ERROR;
}