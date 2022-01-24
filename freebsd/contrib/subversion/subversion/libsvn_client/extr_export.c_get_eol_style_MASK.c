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
typedef  scalar_t__ svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_IO_UNKNOWN_EOL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_subst_eol_style_fixed ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const**,char const*) ; 
 scalar_t__ svn_subst_eol_style_native ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_subst_eol_style_t *style,
              const char **eol,
              const char *value,
              const char *requested_value)
{
  FUNC2(style, eol, value);
  if (requested_value && *style == svn_subst_eol_style_native)
    {
      svn_subst_eol_style_t requested_style;
      const char *requested_eol;

      FUNC2(&requested_style, &requested_eol,
                                     requested_value);

      if (requested_style == svn_subst_eol_style_fixed)
        *eol = requested_eol;
      else
        return FUNC1(SVN_ERR_IO_UNKNOWN_EOL, NULL,
                                 FUNC0("'%s' is not a valid EOL value"),
                                 requested_value);
    }
  return SVN_NO_ERROR;
}