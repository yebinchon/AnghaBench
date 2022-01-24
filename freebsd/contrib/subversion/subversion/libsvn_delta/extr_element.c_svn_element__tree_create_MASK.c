#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int root_eid; int /*<<< orphan*/  e_map; } ;
typedef  TYPE_1__ svn_element__tree_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

svn_element__tree_t *
FUNC3(apr_hash_t *e_map,
                         int root_eid,
                         apr_pool_t *result_pool)
{
  svn_element__tree_t *element_tree
    = FUNC2(result_pool, sizeof(*element_tree));

  element_tree->e_map = e_map ? FUNC0(result_pool, e_map)
                              : FUNC1(result_pool);
  element_tree->root_eid = root_eid;
  return element_tree;
}