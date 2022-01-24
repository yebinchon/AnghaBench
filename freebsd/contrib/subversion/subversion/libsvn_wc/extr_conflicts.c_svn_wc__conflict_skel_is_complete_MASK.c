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
struct TYPE_4__ {struct TYPE_4__ const* next; struct TYPE_4__ const* children; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_ERR_INCOMPLETE_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*) ; 

svn_error_t *
FUNC3(svn_boolean_t *complete,
                                  const svn_skel_t *conflict_skel)
{
  *complete = FALSE;

  if (FUNC2(conflict_skel) < 2)
    return FUNC1(SVN_ERR_INCOMPLETE_DATA, NULL,
                            FUNC0("Not a conflict skel"));

  if (FUNC2(conflict_skel->children) < 2)
    return SVN_NO_ERROR; /* WHY is not set */

  if (FUNC2(conflict_skel->children->next) == 0)
    return SVN_NO_ERROR; /* No conflict set */

  *complete = TRUE;
  return SVN_NO_ERROR;
}