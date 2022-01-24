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
typedef  int /*<<< orphan*/  svn_config_t ;

/* Variables and functions */
 char const* SVN_CONFIG_SECTION_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**,char const*,char const*,char const*) ; 

const char*
FUNC1(svn_config_t *cfg,
                              const char* server_group,
                              const char* option_name,
                              const char* default_value)
{
  const char *retval;
  FUNC0(cfg, &retval, SVN_CONFIG_SECTION_GLOBAL,
                 option_name, default_value);
  if (server_group)
    {
      FUNC0(cfg, &retval, server_group, option_name, retval);
    }
  return retval;
}