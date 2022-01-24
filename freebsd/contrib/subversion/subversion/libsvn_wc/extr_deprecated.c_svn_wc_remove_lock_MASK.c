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
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char *path,
                   svn_wc_adm_access_t *adm_access,
                   apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;

  FUNC0(FUNC1(&local_abspath, path, pool));
  FUNC0(FUNC4(&wc_ctx, NULL /* config */,
                                         FUNC3(adm_access),
                                         pool));

  FUNC0(FUNC6(wc_ctx, local_abspath, pool));

  return FUNC2(FUNC5(wc_ctx));

}