#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {scalar_t__ root_eid; int /*<<< orphan*/  e_map; } ;
typedef  TYPE_1__ svn_element__tree_t ;
struct TYPE_14__ {scalar_t__ parent_eid; char* name; int /*<<< orphan*/  payload; } ;
typedef  TYPE_2__ svn_element__content_t ;
struct TYPE_15__ {int /*<<< orphan*/  txn; } ;
typedef  TYPE_3__ svn_branch__state_t ;
typedef  int svn_branch__eid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_branch__state_t *to_branch,
                            int to_eid,
                            svn_branch__eid_t new_parent_eid,
                            const char *new_name,
                            svn_element__tree_t *new_subtree,
                            apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_element__content_t *new_root_content;

  /* Get a new EID for the root element, if not given. */
  if (to_eid == -1)
    {
      FUNC0(FUNC5(to_branch->txn, &to_eid,
                                      scratch_pool));
    }

  /* Create the new subtree root element */
  new_root_content = FUNC9(new_subtree, new_subtree->root_eid);
  new_root_content = FUNC7(new_parent_eid, new_name,
                                                 new_root_content->payload,
                                                 scratch_pool);
  FUNC0(FUNC4(to_branch, to_eid, new_root_content,
                                   scratch_pool));

  /* Process its immediate children */
  for (hi = FUNC1(scratch_pool, new_subtree->e_map);
       hi; hi = FUNC2(hi))
    {
      int this_from_eid = FUNC6(hi);
      svn_element__content_t *from_element = FUNC3(hi);

      if (from_element->parent_eid == new_subtree->root_eid)
        {
          svn_element__tree_t *this_subtree;

          /* Recurse. (We don't try to check whether it's a directory node,
             as we might not have the node kind in the map.) */
          this_subtree
            = FUNC8(new_subtree->e_map, this_from_eid,
                                       scratch_pool);
          FUNC0(FUNC10(to_branch, -1 /*to_eid*/,
                                              to_eid, from_element->name,
                                              this_subtree, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}