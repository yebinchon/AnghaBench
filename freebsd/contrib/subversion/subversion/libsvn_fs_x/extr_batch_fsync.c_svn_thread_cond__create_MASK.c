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
typedef  int /*<<< orphan*/  svn_thread_cond__t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_thread_cond__t **cond,
                        apr_pool_t *result_pool)
{
#if APR_HAS_THREADS

  WRAP_APR_ERR(apr_thread_cond_create(cond, result_pool),
               _("Can't create condition variable"));

#else

  *cond = FUNC2(result_pool, sizeof(**cond));

#endif

  return SVN_NO_ERROR;
}