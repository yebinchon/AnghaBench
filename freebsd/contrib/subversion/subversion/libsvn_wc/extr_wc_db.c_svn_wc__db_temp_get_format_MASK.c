#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int format; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_MISSING ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(int *format,
                           svn_wc__db_t *db,
                           const char *local_dir_abspath,
                           apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_error_t *err;

  FUNC0(FUNC2(local_dir_abspath));
  /* ### assert that we were passed a directory?  */

  err = FUNC7(&wcroot, &local_relpath, db,
                                local_dir_abspath, scratch_pool, scratch_pool);

  /* If we hit an error examining this directory, then declare this
     directory to not be a working copy.  */
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
        return FUNC6(err);
      FUNC4(err);

      /* Remap the returned error.  */
      *format = 0;
      return FUNC5(SVN_ERR_WC_MISSING, NULL,
                               FUNC1("'%s' is not a working copy"),
                               FUNC3(local_dir_abspath,
                                                      scratch_pool));
    }

  FUNC0(wcroot != NULL);
  FUNC0(wcroot->format >= 1);

  *format = wcroot->format;

  return SVN_NO_ERROR;
}