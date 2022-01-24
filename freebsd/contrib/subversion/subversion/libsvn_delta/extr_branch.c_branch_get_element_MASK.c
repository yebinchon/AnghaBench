#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_element__content_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_branch__state_t ;
struct TYPE_5__ {int /*<<< orphan*/  element_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static svn_element__content_t *
FUNC2(const svn_branch__state_t *branch,
                   int eid)
{
  svn_element__content_t *element;

  element = FUNC1(branch->priv->element_tree, eid);

  if (element)
    FUNC0(branch, eid, element);
  return element;
}