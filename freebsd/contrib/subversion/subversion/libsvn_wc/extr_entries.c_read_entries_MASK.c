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
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SVN_WC__WC_NG_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_hash_t **entries,
             svn_wc__db_t *db,
             const char *dir_abspath,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *dir_relpath;
  int wc_format;

  FUNC0(FUNC5(&wc_format, db, dir_abspath,
                                     scratch_pool));

  if (wc_format < SVN_WC__WC_NG_VERSION)
    return FUNC4(FUNC7(entries,
                                                    dir_abspath,
                                                    result_pool,
                                                    scratch_pool));

  FUNC0(FUNC6(&wcroot, &dir_relpath,
                                                db, dir_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  FUNC1(FUNC3(entries,
                                       db, dir_abspath,
                                       wcroot, dir_relpath,
                                       result_pool, scratch_pool),
                      wcroot);

  return SVN_NO_ERROR;
}