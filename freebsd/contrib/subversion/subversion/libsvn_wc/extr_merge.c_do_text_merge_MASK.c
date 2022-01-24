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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_t ;
typedef  int /*<<< orphan*/  svn_diff_file_options_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const**,char const**,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_diff_conflict_display_modified_original_latest ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,char const*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_boolean_t *contains_conflicts,
              apr_file_t *result_f,
              const apr_array_header_t *merge_options,
              const char *detranslated_target,
              const char *left,
              const char *right,
              const char *target_label,
              const char *left_label,
              const char *right_label,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *pool)
{
  svn_diff_t *diff;
  svn_stream_t *ostream;
  const char *target_marker;
  const char *left_marker;
  const char *right_marker;
  svn_diff_file_options_t *diff3_options;

  diff3_options = FUNC4(pool);

  if (merge_options)
    FUNC0(FUNC5(diff3_options,
                                        merge_options, pool));


  FUNC1(&target_marker, &left_marker, &right_marker,
                        target_label, left_label, right_label, pool);

  FUNC0(FUNC3(&diff, left, detranslated_target, right,
                                diff3_options, pool));

  ostream = FUNC8(result_f, TRUE, pool);

  FUNC0(FUNC6(ostream, diff,
                                      left, detranslated_target, right,
                                      left_marker,
                                      target_marker,
                                      right_marker,
                                      "=======", /* separator */
                                      svn_diff_conflict_display_modified_original_latest,
                                      cancel_func, cancel_baton,
                                      pool));
  FUNC0(FUNC7(ostream));

  *contains_conflicts = FUNC2(diff);

  return SVN_NO_ERROR;
}