#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_result_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_description_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_description2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  conflict_baton; int /*<<< orphan*/  (* conflict_func ) (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_choose_postpone ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_wc_conflict_result_t **result,
                   const svn_wc_conflict_description2_t *conflict,
                   void *baton,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_client_ctx_t *ctx = baton;

  if (ctx->conflict_func)
    {
      const svn_wc_conflict_description_t *cd;

      cd = FUNC2(conflict, scratch_pool);
      FUNC0(ctx->conflict_func(result, cd, ctx->conflict_baton,
                                 result_pool));
    }
  else
    {
      /* We have to set a result; so we postpone */
      *result = FUNC3(svn_wc_conflict_choose_postpone,
                                              NULL, result_pool);
    }

  return SVN_NO_ERROR;
}