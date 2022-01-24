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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_t ;
struct TYPE_4__ {int /*<<< orphan*/  ignore_eol_style; } ;
typedef  TYPE_1__ svn_diff_file_options_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_diff_conflict_display_only_conflicts ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_client_conflict_t *conflict,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *pool)
{
  svn_diff_t *diff;
  svn_stream_t *output;
  svn_diff_file_options_t *options;
  const char *base_abspath;
  const char *my_abspath;
  const char *their_abspath;

  FUNC0(FUNC2(NULL, &my_abspath,
                                                &base_abspath, &their_abspath,
                                                conflict, pool, pool));
  options = FUNC4(pool);
  options->ignore_eol_style = TRUE;
  FUNC0(FUNC6(&output, pool));
  FUNC0(FUNC3(&diff, base_abspath, my_abspath, their_abspath,
                                options, pool));
  /* ### Consider putting the markers/labels from
     ### svn_wc__merge_internal in the conflict description. */
  return FUNC5(
           output, diff, base_abspath, my_abspath, their_abspath,
           FUNC1("||||||| ORIGINAL"),
           FUNC1("<<<<<<< MINE (select with 'mc')"),
           FUNC1(">>>>>>> THEIRS (select with 'tc')"),
           "=======",
           svn_diff_conflict_display_only_conflicts,
           cancel_func,
           cancel_baton,
           pool);
}