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
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_hash_t **entries,
                              svn_wc_adm_access_t *adm_access,
                              svn_boolean_t show_hidden,
                              apr_pool_t *pool)
{
  apr_hash_t *new_entries;

  new_entries = FUNC4(adm_access);
  if (! new_entries)
    {
      svn_wc__db_t *db = FUNC7(adm_access);
      const char *local_abspath = FUNC3(adm_access);
      apr_pool_t *result_pool = FUNC5(adm_access);

      FUNC0(FUNC2(&new_entries, db, local_abspath,
                           result_pool, pool));

      FUNC6(adm_access, new_entries);
    }

  if (show_hidden)
    *entries = new_entries;
  else
    FUNC0(FUNC1(entries, new_entries,
                          FUNC5(adm_access),
                          pool));

  return SVN_NO_ERROR;
}