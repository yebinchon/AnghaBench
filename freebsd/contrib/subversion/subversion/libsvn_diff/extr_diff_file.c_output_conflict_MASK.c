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
struct TYPE_4__ {scalar_t__ conflict_style; int /*<<< orphan*/  conflict_latest; int /*<<< orphan*/  output_stream; int /*<<< orphan*/  conflict_separator; int /*<<< orphan*/  conflict_original; int /*<<< orphan*/  conflict_modified; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_1__ svn_diff3__file_output_baton_t ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_diff3__file_output_vtable ; 
 scalar_t__ svn_diff_conflict_display_latest ; 
 scalar_t__ svn_diff_conflict_display_modified ; 
 scalar_t__ svn_diff_conflict_display_modified_latest ; 
 scalar_t__ svn_diff_conflict_display_modified_original_latest ; 
 scalar_t__ svn_diff_conflict_display_only_conflicts ; 
 scalar_t__ svn_diff_conflict_display_resolved_modified_latest ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton,
                apr_off_t original_start, apr_off_t original_length,
                apr_off_t modified_start, apr_off_t modified_length,
                apr_off_t latest_start, apr_off_t latest_length,
                svn_diff_t *diff)
{
  svn_diff3__file_output_baton_t *file_baton = baton;

  svn_diff_conflict_display_style_t style = file_baton->conflict_style;

  if (style == svn_diff_conflict_display_only_conflicts)
    return FUNC2(file_baton,
                                        original_start, original_length,
                                        modified_start, modified_length,
                                        latest_start, latest_length);

  if (style == svn_diff_conflict_display_resolved_modified_latest)
    {
      if (diff)
        return FUNC5(diff, baton,
                                &svn_diff3__file_output_vtable,
                                file_baton->cancel_func,
                                file_baton->cancel_baton);
      else
        style = svn_diff_conflict_display_modified_latest;
    }

  if (style == svn_diff_conflict_display_modified_latest ||
      style == svn_diff_conflict_display_modified_original_latest)
    {
      FUNC0(FUNC6(file_baton->output_stream,
                               file_baton->conflict_modified));
      FUNC0(FUNC4(file_baton));

      FUNC0(FUNC3(baton, 1, modified_start, modified_length));

      if (style == svn_diff_conflict_display_modified_original_latest)
        {
          FUNC0(FUNC6(file_baton->output_stream,
                                   file_baton->conflict_original));
          FUNC0(FUNC4(file_baton));
          FUNC0(FUNC3(baton, 0, original_start, original_length));
        }

      FUNC0(FUNC6(file_baton->output_stream,
                              file_baton->conflict_separator));
      FUNC0(FUNC4(file_baton));

      FUNC0(FUNC3(baton, 2, latest_start, latest_length));

      FUNC0(FUNC6(file_baton->output_stream,
                              file_baton->conflict_latest));
      FUNC0(FUNC4(file_baton));
    }
  else if (style == svn_diff_conflict_display_modified)
    FUNC0(FUNC3(baton, 1, modified_start, modified_length));
  else if (style == svn_diff_conflict_display_latest)
    FUNC0(FUNC3(baton, 2, latest_start, latest_length));
  else /* unknown style */
    FUNC1();

  return SVN_NO_ERROR;
}