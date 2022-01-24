#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_t ;
typedef  scalar_t__ svn_diff_conflict_display_style_t ;
struct TYPE_4__ {scalar_t__ conflict_style; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_1__ merge_output_baton_t ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  merge_output_vtable ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_diff_conflict_display_latest ; 
 scalar_t__ svn_diff_conflict_display_modified ; 
 scalar_t__ svn_diff_conflict_display_modified_latest ; 
 scalar_t__ svn_diff_conflict_display_modified_original_latest ; 
 scalar_t__ svn_diff_conflict_display_resolved_modified_latest ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                apr_off_t original_start, apr_off_t original_length,
                apr_off_t modified_start, apr_off_t modified_length,
                apr_off_t latest_start, apr_off_t latest_length,
                svn_diff_t *diff)
{
  merge_output_baton_t *btn = baton;

  svn_diff_conflict_display_style_t style = btn->conflict_style;

  if (style == svn_diff_conflict_display_resolved_modified_latest)
    {
      if (diff)
        return FUNC4(diff, baton, &merge_output_vtable,
                                btn->cancel_func, btn->cancel_baton);
      else
        style = svn_diff_conflict_display_modified_latest;
    }

  if (style == svn_diff_conflict_display_modified_latest ||
      style == svn_diff_conflict_display_modified_original_latest)
    {
      FUNC0(FUNC2(btn, 1/*modified*/));
      FUNC0(FUNC3(btn, 1/*modified*/,
                                       modified_start, modified_length));

      if (style == svn_diff_conflict_display_modified_original_latest)
        {
          FUNC0(FUNC2(btn, 0/*original*/));
          FUNC0(FUNC3(btn, 0/*original*/,
                                           original_start, original_length));
        }

      FUNC0(FUNC2(btn, 2/*separator*/));
      FUNC0(FUNC3(btn, 2/*latest*/,
                                       latest_start, latest_length));
      FUNC0(FUNC2(btn, 3/*latest (end)*/));
    }
  else if (style == svn_diff_conflict_display_modified)
      FUNC0(FUNC3(btn, 1/*modified*/,
                                       modified_start, modified_length));
  else if (style == svn_diff_conflict_display_latest)
      FUNC0(FUNC3(btn, 2/*latest*/,
                                       latest_start, latest_length));
  else /* unknown style */
    FUNC1();

  return SVN_NO_ERROR;
}