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
typedef  int /*<<< orphan*/  svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const svn_wc_entry_t **parent_entry,
                const svn_wc_entry_t **entry,
                svn_wc__db_t *db,
                const char *dir_abspath,
                const char *name,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *dir_relpath;

  FUNC0(FUNC4(&wcroot, &dir_relpath,
                                                db, dir_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  FUNC1(FUNC3(parent_entry, entry,
                                          db, dir_abspath,
                                          wcroot, dir_relpath,
                                          name,
                                          result_pool, scratch_pool),
                      wcroot);

  return SVN_NO_ERROR;
}