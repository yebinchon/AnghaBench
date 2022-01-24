#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int root_eid; } ;
typedef  TYPE_1__ svn_element__tree_t ;
struct TYPE_7__ {int parent_eid; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ svn_element__content_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_1__ const*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

const char *
FUNC3(const svn_element__tree_t *tree,
                                  int eid,
                                  apr_pool_t *result_pool)
{
  const char *path = "";
  svn_element__content_t *element;

  for (; eid != tree->root_eid; eid = element->parent_eid)
    {
      element = FUNC1(tree, eid);
      if (! element)
        return NULL;
      path = FUNC2(element->name, path, result_pool);
    }
  FUNC0(eid == tree->root_eid);
  return path;
}