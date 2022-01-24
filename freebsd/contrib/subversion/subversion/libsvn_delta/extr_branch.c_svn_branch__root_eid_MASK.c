#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int root_eid; } ;
typedef  TYPE_1__ svn_element__tree_t ;
typedef  int /*<<< orphan*/  svn_branch__state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(const svn_branch__state_t *branch)
{
  svn_element__tree_t *elements;

  FUNC1(FUNC0(branch, &elements,
                                                 NULL/*scratch_pool*/));
  return elements->root_eid;
}