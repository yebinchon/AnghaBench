#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  repos_root; } ;
typedef  TYPE_1__ svn_commit_info_t ;
struct ccw_baton {int /*<<< orphan*/  original_baton; int /*<<< orphan*/  (* original_callback ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const svn_commit_info_t *commit_info,
                        void *baton,
                        apr_pool_t *scratch_pool)
{
  struct ccw_baton *ccwb = baton;
  svn_commit_info_t *ci = FUNC2(commit_info, scratch_pool);

  FUNC0(FUNC4(ccwb->session, &ci->repos_root,
                                       scratch_pool));

  return FUNC3(ccwb->original_callback(ci, ccwb->original_baton,
                                                 scratch_pool));
}