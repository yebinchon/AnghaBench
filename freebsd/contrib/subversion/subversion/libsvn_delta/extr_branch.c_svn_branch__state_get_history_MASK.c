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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  svn_branch__history_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_history ) (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_branch__state_t *branch,
                              svn_branch__history_t **history_p,
                              apr_pool_t *result_pool)
{
  FUNC0(branch->vtable->get_history(branch,
                                      history_p,
                                      result_pool));
  FUNC1(*history_p);
  return SVN_NO_ERROR;
}