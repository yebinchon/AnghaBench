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
typedef  int /*<<< orphan*/  svn_element__content_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  e_map; } ;
struct TYPE_8__ {int /*<<< orphan*/  is_flat; TYPE_3__* element_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC6(svn_branch__state_t *branch,
               int eid,
               const svn_element__content_t *element)
{
  apr_pool_t *map_pool = FUNC2(branch->priv->element_tree->e_map);

  FUNC1(FUNC0(branch, eid));
  if (element)
    FUNC4(branch, eid, element);

  FUNC5(branch->priv->element_tree, eid, element);
  branch->priv->is_flat = FALSE;
  FUNC3(branch, map_pool);
}