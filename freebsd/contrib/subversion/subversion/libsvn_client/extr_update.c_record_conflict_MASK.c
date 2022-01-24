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
typedef  int /*<<< orphan*/  svn_wc_conflict_result_t ;
struct TYPE_3__ {int /*<<< orphan*/  local_abspath; } ;
typedef  TYPE_1__ svn_wc_conflict_description2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  svn_wc_conflict_choose_postpone ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_wc_conflict_result_t **result,
                const svn_wc_conflict_description2_t *description,
                void *baton,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *conflicted_paths = baton;

  FUNC2(conflicted_paths,
                FUNC1(FUNC0(conflicted_paths),
                            description->local_abspath), "");
  *result = FUNC3(svn_wc_conflict_choose_postpone,
                                          NULL, result_pool);
  return SVN_NO_ERROR;
}