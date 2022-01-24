#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_element__tree_t ;
typedef  int /*<<< orphan*/  svn_branch__state_t ;
struct TYPE_6__ {int /*<<< orphan*/  eid; TYPE_3__* branch; } ;
typedef  TYPE_2__ svn_branch__el_rev_id_t ;
typedef  int /*<<< orphan*/  svn_branch__eid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  is_flat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const svn_branch__el_rev_id_t *from_el_rev,
             svn_branch__state_t *to_branch,
             svn_branch__eid_t to_parent_eid,
             const char *to_name,
             apr_pool_t *scratch_pool)
{
  svn_element__tree_t *new_subtree;

  FUNC1(from_el_rev->branch->priv->is_flat);

  FUNC0(FUNC3(from_el_rev->branch, &new_subtree,
                                         scratch_pool));
  new_subtree = FUNC4(new_subtree,
                                                     from_el_rev->eid,
                                                     scratch_pool);

  /* copy the subtree, assigning new EIDs */
  FUNC0(FUNC2(to_branch, -1 /*to_eid*/,
                                      to_parent_eid, to_name,
                                      new_subtree,
                                      scratch_pool));

  return SVN_NO_ERROR;
}