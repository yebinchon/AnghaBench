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

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_CLIENT_PROPERTY_NAME ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_prop_wc_kind ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const char *name)
{
  if (FUNC2(name) == svn_prop_wc_kind)
    {
      return FUNC1
        (SVN_ERR_CLIENT_PROPERTY_NAME, NULL,
         FUNC0("'%s' is a wcprop, thus not accessible to clients"),
         name);
    }

  return SVN_NO_ERROR;
}