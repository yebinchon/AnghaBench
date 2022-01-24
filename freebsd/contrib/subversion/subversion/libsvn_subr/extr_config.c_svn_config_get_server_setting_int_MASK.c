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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_CONFIG_VALUE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

svn_error_t*
FUNC4(svn_config_t *cfg,
                                  const char *server_group,
                                  const char *option_name,
                                  apr_int64_t default_value,
                                  apr_int64_t *result_value,
                                  apr_pool_t *pool)
{
  const char* tmp_value;
  char *end_pos;

  tmp_value = FUNC2(cfg, server_group,
                                            option_name, NULL);
  if (tmp_value == NULL)
    *result_value = default_value;
  else
    {
      /* read tmp_value as an int now */
      *result_value = FUNC1(tmp_value, &end_pos, 0);

      if (*end_pos != 0)
        {
          return FUNC3
            (SVN_ERR_BAD_CONFIG_VALUE, NULL,
             FUNC0("Config error: invalid integer value '%s'"),
             tmp_value);
        }
    }

  return SVN_NO_ERROR;
}