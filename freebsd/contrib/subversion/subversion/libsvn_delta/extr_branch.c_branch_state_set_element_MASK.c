#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {int parent_eid; char* name; int /*<<< orphan*/  payload; } ;
typedef  TYPE_3__ svn_element__content_t ;
struct TYPE_16__ {TYPE_1__* priv; } ;
typedef  TYPE_4__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  svn_branch__eid_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_14__ {int /*<<< orphan*/  root_eid; int /*<<< orphan*/  e_map; } ;
struct TYPE_13__ {TYPE_2__* element_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_BRANCH__ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 TYPE_3__* FUNC6 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_branch__state_t *branch,
                         svn_branch__eid_t eid,
                         const svn_element__content_t *element,
                         apr_pool_t *scratch_pool)
{
  apr_pool_t *map_pool = FUNC4(branch->priv->element_tree->e_map);

  /* EID must be a valid element id */
  FUNC2(FUNC0(branch, eid));

  if (element)
    {
      element = FUNC6(element, map_pool);

      /* NEW_PAYLOAD must be specified, either in full or by reference */
      FUNC2(element->payload);

      if ((element->parent_eid == -1) != FUNC1(branch, eid)
          || (*element->name == '\0') != FUNC1(branch, eid))
        {
          return FUNC7(SVN_BRANCH__ERR, NULL,
                                   FUNC3("Cannot set e%d to (parent=e%d, name='%s'): "
                                     "branch root is e%d"),
                                   eid, element->parent_eid, element->name,
                                   branch->priv->element_tree->root_eid);
        }
    }

  /* Insert the new version */
  FUNC5(branch, eid, element);
  return SVN_NO_ERROR;
}