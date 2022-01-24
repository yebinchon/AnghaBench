#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char *path,
                              const char **pristine_path,
                              apr_pool_t *pool)
{
  svn_wc__db_t *db;
  const char *local_abspath;
  svn_error_t *err;

  FUNC0(FUNC2(&local_abspath, path, pool));

  FUNC0(FUNC7(&db, NULL, FALSE, TRUE, pool, pool));
  /* DB is now open. This is seemingly a "light" function that a caller
     may use repeatedly despite error return values. The rest of this
     function should aggressively close DB, even in the error case.  */

  err = FUNC8(pristine_path, db, local_abspath,
                                       pool, pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
    {
      /* The node doesn't exist, so return a non-existent path located
         in WCROOT/.svn/  */
      const char *wcroot_abspath;

      FUNC3(err);

      err = FUNC6(&wcroot_abspath, db, local_abspath,
                                  pool, pool);
      if (err == NULL)
        *pristine_path = FUNC1(wcroot_abspath, pool);
    }

   return FUNC4(err, FUNC5(db));
}