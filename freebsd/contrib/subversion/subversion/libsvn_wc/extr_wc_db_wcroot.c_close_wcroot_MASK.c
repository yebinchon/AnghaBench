#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_8__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verify_db_cb ; 

__attribute__((used)) static apr_status_t
FUNC7(void *data)
{
  svn_wc__db_wcroot_t *wcroot = data;
  svn_error_t *err;

  FUNC0(wcroot->sdb != NULL);

#if defined(VERIFY_ON_CLOSE) && defined(SVN_DEBUG)
  if (getenv("SVN_CMDLINE_VERIFY_SQL_AT_CLOSE"))
    {
      apr_pool_t *scratch_pool = svn_pool_create(NULL);

      svn_error_clear(svn_wc__db_verify_db_full_internal(
                                    wcroot, verify_db_cb, NULL, scratch_pool));

      svn_pool_destroy(scratch_pool);
    }
#endif

  err = FUNC5(wcroot->sdb);
  wcroot->sdb = NULL;
  if (err)
    {
      apr_status_t result = err->apr_err;
      FUNC2(err);
      return result;
    }

  return APR_SUCCESS;
}