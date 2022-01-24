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
typedef  enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_PROP_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int svn_prop_entry_kind ; 
 int svn_prop_wc_kind ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const char *name)
{
  enum svn_prop_kind prop_kind = FUNC2(name);

  /* we don't do entry properties here */
  if (prop_kind == svn_prop_entry_kind)
    return FUNC1(SVN_ERR_BAD_PROP_KIND, NULL,
                             FUNC0("Property '%s' is an entry property"), name);

  /* Check to see if we're setting the dav cache. */
  if (prop_kind == svn_prop_wc_kind)
    return FUNC1(SVN_ERR_BAD_PROP_KIND, NULL,
                             FUNC0("Property '%s' is a WC property, not "
                               "a regular property"), name);

  return SVN_NO_ERROR;
}