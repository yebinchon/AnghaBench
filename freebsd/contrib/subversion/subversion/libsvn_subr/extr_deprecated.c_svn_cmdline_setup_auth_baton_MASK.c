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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  svn_auth_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC2(svn_auth_baton_t **ab,
                             svn_boolean_t non_interactive,
                             const char *auth_username,
                             const char *auth_password,
                             const char *config_dir,
                             svn_boolean_t no_auth_cache,
                             svn_config_t *cfg,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *pool)
{
  return FUNC1(FUNC0(
                           ab, non_interactive,
                           auth_username, auth_password,
                           config_dir, no_auth_cache, FALSE,
                           cfg, cancel_func, cancel_baton, pool));
}