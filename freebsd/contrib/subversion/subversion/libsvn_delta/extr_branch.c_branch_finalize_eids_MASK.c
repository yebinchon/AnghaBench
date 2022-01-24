#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int parent_eid; } ;
typedef  TYPE_2__ svn_element__content_t ;
struct TYPE_11__ {TYPE_1__* priv; int /*<<< orphan*/  bid; } ;
typedef  TYPE_3__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_12__ {int root_eid; int /*<<< orphan*/  e_map; } ;
struct TYPE_9__ {TYPE_4__* element_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_branch__state_t *branch,
                     int mapping_offset,
                     apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  branch->bid = FUNC3(branch->bid, mapping_offset,
                                    FUNC4(branch));
  if (branch->priv->element_tree->root_eid < -1)
    {
      branch->priv->element_tree->root_eid
        = mapping_offset - branch->priv->element_tree->root_eid;
    }

  for (hi = FUNC0(scratch_pool, branch->priv->element_tree->e_map);
       hi; hi = FUNC1(hi))
    {
      int old_eid = FUNC5(hi);
      svn_element__content_t *element = FUNC2(hi);

      if (old_eid < -1)
        {
          int new_eid = mapping_offset - old_eid;

          FUNC6(branch->priv->element_tree, old_eid, NULL);
          FUNC6(branch->priv->element_tree, new_eid, element);
        }
      if (element->parent_eid < -1)
        {
          element->parent_eid = mapping_offset - element->parent_eid;
        }
    }
  return SVN_NO_ERROR;
}