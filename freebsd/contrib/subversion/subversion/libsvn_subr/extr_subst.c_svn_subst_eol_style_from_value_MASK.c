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
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;

/* Variables and functions */
 char* APR_EOL_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  svn_subst_eol_style_fixed ; 
 int /*<<< orphan*/  svn_subst_eol_style_native ; 
 int /*<<< orphan*/  svn_subst_eol_style_none ; 
 int /*<<< orphan*/  svn_subst_eol_style_unknown ; 

void
FUNC1(svn_subst_eol_style_t *style,
                               const char **eol,
                               const char *value)
{
  if (value == NULL)
    {
      /* property doesn't exist. */
      *eol = NULL;
      if (style)
        *style = svn_subst_eol_style_none;
    }
  else if (! FUNC0("native", value))
    {
      *eol = APR_EOL_STR;       /* whee, a portability library! */
      if (style)
        *style = svn_subst_eol_style_native;
    }
  else if (! FUNC0("LF", value))
    {
      *eol = "\n";
      if (style)
        *style = svn_subst_eol_style_fixed;
    }
  else if (! FUNC0("CR", value))
    {
      *eol = "\r";
      if (style)
        *style = svn_subst_eol_style_fixed;
    }
  else if (! FUNC0("CRLF", value))
    {
      *eol = "\r\n";
      if (style)
        *style = svn_subst_eol_style_fixed;
    }
  else
    {
      *eol = NULL;
      if (style)
        *style = svn_subst_eol_style_unknown;
    }
}