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
struct TYPE_3__ {int /*<<< orphan*/  access_cache; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(svn_wc__db_t *db,
                             const char *local_dir_abspath,
                             apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  svn_wc__db_wcroot_t *wcroot;
  svn_error_t *err;

  FUNC0(FUNC1(local_dir_abspath));
  /* ### assert that we were passed a directory?  */

  err = FUNC4(&wcroot, &local_relpath,
                            db, local_dir_abspath, scratch_pool, scratch_pool);
  if (err)
    {
      FUNC2(err);
      return;
    }

  FUNC3(wcroot->access_cache, local_dir_abspath, NULL);
}