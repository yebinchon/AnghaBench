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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REGISTRY_PREFIX ; 
 int SVN_REGISTRY_PREFIX_LEN ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_config_t **cfgp, const char *file,
                 svn_boolean_t must_exist,
                 svn_boolean_t section_names_case_sensitive,
                 svn_boolean_t option_names_case_sensitive,
                 apr_pool_t *result_pool)
{
  svn_config_t *cfg;
  svn_error_t *err;

  FUNC0(FUNC4(&cfg,
                             section_names_case_sensitive,
                             option_names_case_sensitive,
                             result_pool));

  /* Yes, this is platform-specific code in Subversion, but there's no
     practical way to migrate it into APR, as it's simultaneously
     Subversion-specific and Windows-specific.  Even if we eventually
     want to have APR offer a generic config-reading interface, it
     makes sense to test it here first and migrate it later. */
#ifdef WIN32
  if (0 == strncmp(file, SVN_REGISTRY_PREFIX, SVN_REGISTRY_PREFIX_LEN))
    err = svn_config__parse_registry(cfg, file + SVN_REGISTRY_PREFIX_LEN,
                                     must_exist, result_pool);
  else
#endif /* WIN32 */
    err = FUNC2(cfg, file, must_exist, result_pool);

  if (err != SVN_NO_ERROR)
    return err;
  else
    *cfgp = cfg;

  return SVN_NO_ERROR;
}