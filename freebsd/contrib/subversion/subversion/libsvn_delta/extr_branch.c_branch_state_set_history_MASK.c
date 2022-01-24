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
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  svn_branch__history_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  history; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_branch__state_t *branch,
                         const svn_branch__history_t *history,
                         apr_pool_t *scratch_pool)
{
  apr_pool_t *branch_pool = FUNC0(branch);

  branch->priv->history
    = FUNC1(history, branch_pool);
  return SVN_NO_ERROR;
}