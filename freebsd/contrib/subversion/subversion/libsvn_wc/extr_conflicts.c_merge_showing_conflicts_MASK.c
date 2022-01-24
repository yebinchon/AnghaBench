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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_io_file_del_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_t ;
typedef  int /*<<< orphan*/  svn_diff_file_options_t ;
typedef  int /*<<< orphan*/  svn_diff_conflict_display_style_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char **chosen_abspath,
                        svn_wc__db_t *db,
                        const char *wri_abspath,
                        svn_diff_conflict_display_style_t style,
                        const apr_array_header_t *merge_options,
                        const char *left_abspath,
                        const char *detranslated_target,
                        const char *right_abspath,
                        svn_io_file_del_t delete_when,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *temp_dir;
  svn_stream_t *chosen_stream;
  svn_diff_t *diff;
  svn_diff_file_options_t *diff3_options;

  diff3_options = FUNC2(scratch_pool);
  if (merge_options)
    FUNC0(FUNC3(diff3_options,
                                        merge_options,
                                        scratch_pool));

  FUNC0(FUNC7(&temp_dir, db,
                                         wri_abspath,
                                         scratch_pool, scratch_pool));
  /* We need to open the stream in RESULT_POOL because that controls the
   * lifetime of the file if DELETE_WHEN is 'on pool cleanup'.  (We also
   * want to allocate CHOSEN_ABSPATH in RESULT_POOL, but we don't care
   * about the stream itself.) */
  FUNC0(FUNC6(&chosen_stream, chosen_abspath,
                                 temp_dir, delete_when,
                                 result_pool, scratch_pool));
  FUNC0(FUNC1(&diff,
                                left_abspath,
                                detranslated_target, right_abspath,
                                diff3_options, scratch_pool));
  FUNC0(FUNC4(chosen_stream, diff,
                                      left_abspath,
                                      detranslated_target,
                                      right_abspath,
                                      NULL, NULL, NULL, NULL, /* markers */
                                      style, cancel_func, cancel_baton,
                                      scratch_pool));
  FUNC0(FUNC5(chosen_stream));

  return SVN_NO_ERROR;
}