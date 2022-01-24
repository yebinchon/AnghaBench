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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_PROPERTY_NAME ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char *propname,
                const svn_string_t *propval)
{
  if (FUNC4(propname))
    return FUNC3(SVN_ERR_CLIENT_PROPERTY_NAME, NULL,
                             FUNC1("Revision property '%s' not allowed "
                               "in this context"), propname);

  FUNC0(FUNC2(propname));

  if (propval && ! FUNC5(propname))
    return FUNC3(SVN_ERR_CLIENT_PROPERTY_NAME, NULL,
                             FUNC1("Bad property name: '%s'"), propname);

  return SVN_NO_ERROR;
}