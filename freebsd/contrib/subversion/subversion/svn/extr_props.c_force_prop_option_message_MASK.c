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
typedef  int svn_cl__prop_use_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
#define  svn_cl__prop_use_edit 130 
#define  svn_cl__prop_use_set 129 
#define  svn_cl__prop_use_use 128 

__attribute__((used)) static const char*
FUNC2(svn_cl__prop_use_t prop_use, const char *prop_name,
                          apr_pool_t *scratch_pool)
{
  switch (prop_use)
    {
    case svn_cl__prop_use_set:
      return FUNC1(
          scratch_pool,
          FUNC0("Use '--force' to set the '%s' property."),
          prop_name);
    case svn_cl__prop_use_edit:
      return FUNC1(
          scratch_pool,
          FUNC0("Use '--force' to edit the '%s' property."),
          prop_name);
    case svn_cl__prop_use_use:
    default:
      return FUNC1(
          scratch_pool,
          FUNC0("Use '--force' to use the '%s' property'."),
          prop_name);
    }
}