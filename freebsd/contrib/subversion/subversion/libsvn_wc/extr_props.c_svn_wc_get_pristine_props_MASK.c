#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(apr_hash_t **props,
                          svn_wc_context_t *wc_ctx,
                          const char *local_abspath,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  FUNC0(props != NULL);
  FUNC0(FUNC1(local_abspath));

  /* Certain node stats do not have properties defined on them. Check the
     state, and return NULL for these situations.  */

  err = FUNC4(props, wc_ctx->db, local_abspath,
                                       result_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
        return FUNC3(err);

      FUNC2(err);

      /* Documented behavior is to set *PROPS to NULL */
      *props = NULL;
    }

  return SVN_NO_ERROR;
}