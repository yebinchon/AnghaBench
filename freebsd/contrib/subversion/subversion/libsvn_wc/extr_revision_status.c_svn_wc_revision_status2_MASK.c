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
struct TYPE_6__ {void* modified; void* switched; void* sparse_checkout; void* max_rev; void* min_rev; } ;
typedef  TYPE_1__ svn_wc_revision_status_t ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**,void**,void**,void**,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_wc_revision_status_t **result_p,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        const char *trail_url,
                        svn_boolean_t committed,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_wc_revision_status_t *result = FUNC2(result_pool, sizeof(*result));

  *result_p = result;

  FUNC1(FUNC3(local_abspath));

  /* set result as nil */
  result->min_rev  = SVN_INVALID_REVNUM;
  result->max_rev  = SVN_INVALID_REVNUM;
  result->switched = FALSE;
  result->modified = FALSE;
  result->sparse_checkout = FALSE;

  FUNC0(FUNC4(&result->min_rev, &result->max_rev,
                                     &result->sparse_checkout,
                                     &result->modified,
                                     &result->switched,
                                     wc_ctx->db, local_abspath, trail_url,
                                     committed,
                                     scratch_pool));

  if (!result->modified)
    FUNC0(FUNC5(&result->modified, NULL,
                                        wc_ctx->db, local_abspath, TRUE,
                                        cancel_func, cancel_baton,
                                        scratch_pool));

  return SVN_NO_ERROR;
}