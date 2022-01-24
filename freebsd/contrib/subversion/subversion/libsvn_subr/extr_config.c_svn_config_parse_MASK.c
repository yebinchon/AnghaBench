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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_config__default_add_value_fn ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_config_t **cfgp, svn_stream_t *stream,
                 svn_boolean_t section_names_case_sensitive,
                 svn_boolean_t option_names_case_sensitive,
                 apr_pool_t *result_pool)
{
  svn_config_t *cfg;
  svn_error_t *err;
  apr_pool_t *scratch_pool = FUNC3(result_pool);

  err = FUNC2(&cfg,
                           section_names_case_sensitive,
                           option_names_case_sensitive,
                           result_pool);

  if (err == SVN_NO_ERROR)
    err = FUNC1(stream,
                                   FUNC0(
                                       NULL, NULL,
                                       svn_config__default_add_value_fn,
                                       scratch_pool),
                                   cfg, scratch_pool);

  if (err == SVN_NO_ERROR)
    *cfgp = cfg;

  FUNC4(scratch_pool);

  return err;
}