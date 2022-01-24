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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client__committables_t ;
typedef  int /*<<< orphan*/  svn_client__check_url_kind_t ;
struct copy_committables_baton {void* check_url_baton; int /*<<< orphan*/  check_url_func; int /*<<< orphan*/ * result_pool; int /*<<< orphan*/ * committables; int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  harvest_copy_committables ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct copy_committables_baton*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_client__committables_t **committables,
                                  const apr_array_header_t *copy_pairs,
                                  svn_client__check_url_kind_t check_url_func,
                                  void *check_url_baton,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  struct copy_committables_baton btn;

  /* Create the COMMITTABLES structure. */
  FUNC0(committables, result_pool);

  btn.ctx = ctx;
  btn.committables = *committables;
  btn.result_pool = result_pool;

  btn.check_url_func = check_url_func;
  btn.check_url_baton = check_url_baton;

  /* For each copy pair, harvest the committables for that pair into the
     committables hash. */
  return FUNC1(NULL, copy_pairs,
                            harvest_copy_committables, &btn, scratch_pool);
}