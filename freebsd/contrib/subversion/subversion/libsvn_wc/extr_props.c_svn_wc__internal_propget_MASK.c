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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int svn_prop_entry_kind ; 
 int svn_prop_wc_kind ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const svn_string_t **value,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         const char *name,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  apr_hash_t *prophash = NULL;
  enum svn_prop_kind kind = FUNC5(name);

  FUNC0(FUNC3(local_abspath));
  FUNC0(kind != svn_prop_entry_kind);

  if (kind == svn_prop_wc_kind)
    {
      FUNC1(FUNC6(&prophash, db, local_abspath,
                                              result_pool, scratch_pool),
                FUNC2("Failed to load properties"));
    }
  else
    {
      /* regular prop */
      FUNC1(FUNC7(&prophash, db, local_abspath,
                                         result_pool, scratch_pool),
                FUNC2("Failed to load properties"));
    }

  if (prophash)
    *value = FUNC4(prophash, name);
  else
    *value = NULL;

  return SVN_NO_ERROR;
}