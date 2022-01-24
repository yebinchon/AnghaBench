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
typedef  scalar_t__ svn_tristate_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CONFIG_VALUE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ svn_tristate_false ; 
 scalar_t__ svn_tristate_true ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_boolean_t *boolp, const char *input, svn_boolean_t default_value,
         const char *section, const char *option)
{
  svn_tristate_t value = FUNC2(input);

  if (value == svn_tristate_true)
    *boolp = TRUE;
  else if (value == svn_tristate_false)
    *boolp = FALSE;
  else if (input == NULL) /* no value provided */
    *boolp = default_value;

  else if (section) /* unrecognized value */
    return FUNC1(SVN_ERR_BAD_CONFIG_VALUE, NULL,
                             FUNC0("Config error: invalid boolean "
                               "value '%s' for '[%s] %s'"),
                             input, section, option);
  else
    return FUNC1(SVN_ERR_BAD_CONFIG_VALUE, NULL,
                             FUNC0("Config error: invalid boolean "
                               "value '%s' for '%s'"),
                             input, option);

  return SVN_NO_ERROR;
}