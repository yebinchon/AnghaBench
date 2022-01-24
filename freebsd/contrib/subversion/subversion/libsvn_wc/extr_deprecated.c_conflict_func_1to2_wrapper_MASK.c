#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_result_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_description_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_description2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct conflict_func_1to2_baton {int /*<<< orphan*/  inner_baton; int /*<<< orphan*/  (* inner_func ) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_wc_conflict_result_t **result,
                           const svn_wc_conflict_description2_t *conflict,
                           void *baton,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  struct conflict_func_1to2_baton *btn = baton;
  svn_wc_conflict_description_t *cd = FUNC2(conflict,
                                                        scratch_pool);

  return FUNC1(btn->inner_func(result, cd, btn->inner_baton,
                                         result_pool));
}