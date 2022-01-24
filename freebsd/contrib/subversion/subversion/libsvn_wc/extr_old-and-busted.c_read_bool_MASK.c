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
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char**,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_boolean_t *result, const char *field_name,
          char **buf, const char *end)
{
  const char *val;
  FUNC0(FUNC2(&val, buf, end));
  if (val)
    {
      if (FUNC3(val, field_name) != 0)
        return FUNC4(SVN_ERR_WC_CORRUPT, NULL,
                                 FUNC1("Invalid value for field '%s'"),
                                 field_name);
      *result = TRUE;
    }
  else
    *result = FALSE;
  return SVN_NO_ERROR;
}