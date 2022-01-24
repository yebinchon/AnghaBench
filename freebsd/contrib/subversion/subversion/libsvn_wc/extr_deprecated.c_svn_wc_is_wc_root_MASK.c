#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_boolean_t *wc_root,
                  const char *path,
                  svn_wc_adm_access_t *adm_access,
                  apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;
  svn_error_t *err;

  /* Subversion <= 1.6 said that '.' or a drive root is a WC root. */
  if (FUNC6(path) || FUNC3(path, FUNC1(path)))
    {
      *wc_root = TRUE;
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC2(&local_abspath, path, pool));
  FUNC0(FUNC8(&wc_ctx, NULL /* config */,
                                         FUNC7(adm_access),
                                         pool));

  err = FUNC10(wc_root, wc_ctx, local_abspath, pool);

  if (err
      && (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY
          || err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND))
    {
      /* Subversion <= 1.6 said that an unversioned path is a WC root. */
      FUNC4(err);
      *wc_root = TRUE;
    }
  else
    FUNC0(err);

  return FUNC5(FUNC9(wc_ctx));
}