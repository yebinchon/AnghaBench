#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_boolean_t *text_conflicted_p,
                     svn_boolean_t *prop_conflicted_p,
                     svn_boolean_t *tree_conflicted_p,
                     const char *path,
                     svn_wc_adm_access_t *adm_access,
                     apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;
  svn_error_t *err;

  FUNC0(FUNC1(&local_abspath, path, pool));
  FUNC0(FUNC4(&wc_ctx, NULL /* config */,
                                         FUNC3(adm_access),
                                         pool));

  err = FUNC5(text_conflicted_p, prop_conflicted_p,
                             tree_conflicted_p, wc_ctx, local_abspath, pool);

  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      FUNC2(err);

      if (text_conflicted_p)
        *text_conflicted_p = FALSE;
      if (prop_conflicted_p)
        *prop_conflicted_p = FALSE;
      if (tree_conflicted_p)
        *tree_conflicted_p = FALSE;
    }
  else if (err)
    return err;

  return SVN_NO_ERROR;
}