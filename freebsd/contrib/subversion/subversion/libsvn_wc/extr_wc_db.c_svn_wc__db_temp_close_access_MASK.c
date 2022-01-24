#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
struct TYPE_3__ {int /*<<< orphan*/  access_cache; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_wc__db_t *db,
                             const char *local_dir_abspath,
                             svn_wc_adm_access_t *adm_access,
                             apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  svn_wc__db_wcroot_t *wcroot;

  FUNC1(FUNC2(local_dir_abspath));
  /* ### assert that we were passed a directory?  */

  FUNC0(FUNC4(&wcroot, &local_relpath, db,
                              local_dir_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot->access_cache, local_dir_abspath, NULL);

  return SVN_NO_ERROR;
}