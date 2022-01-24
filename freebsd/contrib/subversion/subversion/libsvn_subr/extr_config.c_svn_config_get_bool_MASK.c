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
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const**,char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_config_t *cfg, svn_boolean_t *valuep,
                    const char *section, const char *option,
                    svn_boolean_t default_value)
{
  const char *tmp_value;
  FUNC1(cfg, &tmp_value, section, option, NULL);
  return FUNC0(valuep, tmp_value, default_value, section, option);
}