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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_9__ {TYPE_1__* prop_rep; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_10__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_8__ {int expanded_size; int /*<<< orphan*/  txn_id; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_boolean_t *has_props,
                         dag_node_t *node,
                         apr_pool_t *scratch_pool)
{
  node_revision_t *noderev;

  FUNC0(FUNC2(&noderev, node));

  if (! noderev->prop_rep)
    {
      *has_props = FALSE; /* Easy out */
      return SVN_NO_ERROR;
    }

  if (FUNC4(&noderev->prop_rep->txn_id))
    {
      /* We are in a commit or something. Check actual properties */
      apr_hash_t *proplist;

      FUNC0(FUNC3(&proplist, node->fs,
                                      noderev, scratch_pool));

      *has_props = proplist ? (0 < FUNC1(proplist)) : FALSE;
    }
  else
    {
      /* Properties are stored as a standard hash stream,
         always ending with "END\n" (4 bytes) */
      *has_props = noderev->prop_rep->expanded_size > 4;
    }

  return SVN_NO_ERROR;
}