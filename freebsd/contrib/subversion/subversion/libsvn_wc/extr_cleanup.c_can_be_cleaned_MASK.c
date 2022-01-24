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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_WORKING_COPY ; 
 int /*<<< orphan*/  SVN_ERR_WC_UNSUPPORTED_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN_WC__WC_NG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(int *wc_format,
               svn_wc__db_t *db,
               const char *local_abspath,
               apr_pool_t *scratch_pool)
{
  FUNC0(FUNC5(wc_format, db,
                                    local_abspath, FALSE, scratch_pool));

  /* a "version" of 0 means a non-wc directory */
  if (*wc_format == 0)
    return FUNC4(SVN_ERR_WC_NOT_WORKING_COPY, NULL,
                             FUNC1("'%s' is not a working copy directory"),
                             FUNC2(local_abspath,
                                                    scratch_pool));

  if (*wc_format < SVN_WC__WC_NG_VERSION)
    return FUNC3(SVN_ERR_WC_UNSUPPORTED_FORMAT, NULL,
                            FUNC1("Log format too old, please use "
                              "Subversion 1.6 or earlier"));

  return SVN_NO_ERROR;
}