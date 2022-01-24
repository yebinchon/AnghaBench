#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 char const* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char **local_relpath,
                      svn_wc__db_t *db,
                      const char *wri_abspath,
                      const char *local_abspath,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *relpath;

  FUNC2(FUNC4(local_abspath));

  FUNC1(FUNC7(&wcroot, &relpath, db,
                              wri_abspath, result_pool, scratch_pool));

  /* This function is indirectly called from the upgrade code, so we
     can't verify the wcroot here. Just check that it is not NULL */
  FUNC0(wcroot, wri_abspath, scratch_pool);

  if (FUNC5(wcroot->abspath, local_abspath))
    {
      *local_relpath = FUNC3(result_pool,
                                   FUNC6(wcroot->abspath,
                                                            local_abspath));
    }
  else
    /* Probably moving from $TMP. Should we allow this? */
    *local_relpath = FUNC3(result_pool, local_abspath);

  return SVN_NO_ERROR;
}