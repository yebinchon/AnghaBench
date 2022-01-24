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
typedef  int /*<<< orphan*/  svn_wc_relocation_validator3_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char *path,
                 svn_wc_adm_access_t *adm_access,
                 const char *from,
                 const char *to,
                 svn_boolean_t recurse,
                 svn_wc_relocation_validator3_t validator,
                 void *validator_baton,
                 apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;

  if (! recurse)
    FUNC0(FUNC3(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                             FUNC1("Non-recursive relocation not supported")));

  FUNC0(FUNC2(&local_abspath, path, pool));
  FUNC0(FUNC6(&wc_ctx, NULL /* config */,
                                         FUNC5(adm_access),
                                         pool));

  FUNC0(FUNC8(wc_ctx, local_abspath, from, to,
                           validator, validator_baton, pool));

  return FUNC4(FUNC7(wc_ctx));
}