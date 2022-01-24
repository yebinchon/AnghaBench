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
typedef  scalar_t__ svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char* SVN_CONFIG_ASK ; 
 char* SVN_CONFIG_FALSE ; 
 char* SVN_CONFIG_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

svn_error_t *
FUNC4(svn_config_t *cfg, const char **valuep,
                          const char *section, const char *option,
                          const char* default_value)
{
  const char *tmp_value;

  FUNC2(cfg, &tmp_value, section, option, NULL);

  if (! tmp_value)
    tmp_value = default_value;

  if (tmp_value && (0 == FUNC3(tmp_value, SVN_CONFIG_ASK)))
    {
      *valuep = SVN_CONFIG_ASK;
    }
  else
    {
      svn_boolean_t bool_val;
      /* We already incorporated default_value into tmp_value if
         necessary, so the FALSE below will be ignored unless the
         caller is doing something it shouldn't be doing. */
      FUNC0(FUNC1(&bool_val, tmp_value, FALSE, section, option));
      *valuep = bool_val ? SVN_CONFIG_TRUE : SVN_CONFIG_FALSE;
    }

  return SVN_NO_ERROR;
}