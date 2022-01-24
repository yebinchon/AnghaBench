#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_10__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_WORKING_COPY ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int SVN_WC__VERSION ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_wc_adm_access_t **adm_access,
            const char *path,
            svn_boolean_t write_lock,
            svn_wc__db_t *db,
            svn_boolean_t db_provided,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  int wc_format = 0;
  svn_error_t *err;
  svn_wc_adm_access_t *lock;

  FUNC1(FUNC5(&local_abspath, path, scratch_pool));
  err = FUNC8(&wc_format, db, local_abspath, FALSE,
                                  scratch_pool);
  if (wc_format == 0 || (err && FUNC0(err->apr_err)))
    {
      return FUNC7(SVN_ERR_WC_NOT_WORKING_COPY, err,
                               FUNC3("'%s' is not a working copy"),
                               FUNC6(path, scratch_pool));
    }
  FUNC1(err);

  /* The format version must match exactly. Note that wc_db will perform
     an auto-upgrade if allowed. If it does *not*, then it has decided a
     manual upgrade is required and it should have raised an error.  */
  FUNC2(wc_format == SVN_WC__VERSION);

  /* Need to create a new lock */
  FUNC1(FUNC4(&lock, path, db, db_provided, write_lock,
                           result_pool, scratch_pool));

  /* ### recurse was here */
  *adm_access = lock;

  return SVN_NO_ERROR;
}