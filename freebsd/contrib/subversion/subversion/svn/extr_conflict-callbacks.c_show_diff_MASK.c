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
struct TYPE_4__ {int /*<<< orphan*/  context_size; int /*<<< orphan*/  show_c_function; int /*<<< orphan*/  ignore_eol_style; } ;
typedef  TYPE_1__ svn_diff_file_options_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_LOCALE_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_operation_merge ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_client_conflict_t *conflict,
          const char *merged_abspath,
          const char *path_prefix,
          svn_cancel_func_t cancel_func,
          void *cancel_baton,
          apr_pool_t *pool)
{
  const char *path1, *path2;
  const char *label1, *label2;
  svn_diff_t *diff;
  svn_stream_t *output;
  svn_diff_file_options_t *options;
  const char *my_abspath;
  const char *their_abspath;

  FUNC0(FUNC5(NULL, &my_abspath, NULL,
                                                &their_abspath,
                                                conflict, pool, pool));
  if (merged_abspath)
    {
      /* For conflicts recorded by the 'merge' operation, show a diff between
       * 'mine' (the working version of the file as it appeared before the
       * 'merge' operation was run) and 'merged' (the version of the file
       * as it appears after the merge operation).
       *
       * For conflicts recorded by the 'update' and 'switch' operations,
       * show a diff between 'theirs' (the new pristine version of the
       * file) and 'merged' (the version of the file as it appears with
       * local changes merged with the new pristine version).
       *
       * This way, the diff is always minimal and clearly identifies changes
       * brought into the working copy by the update/switch/merge operation. */
      if (FUNC4(conflict) == svn_wc_operation_merge)
        {
          path1 = my_abspath;
          label1 = FUNC1("MINE");
        }
      else
        {
          path1 = their_abspath;
          label1 = FUNC1("THEIRS");
        }
      path2 = merged_abspath;
      label2 = FUNC1("MERGED");
    }
  else
    {
      /* There's no merged file, but we can show the
         difference between mine and theirs. */
      path1 = their_abspath;
      label1 = FUNC1("THEIRS");
      path2 = my_abspath;
      label2 = FUNC1("MINE");
    }

  label1 = FUNC2(pool, "%s\t- %s",
                        FUNC3(
                          path_prefix, path1, pool), label1);
  label2 = FUNC2(pool, "%s\t- %s",
                        FUNC3(
                          path_prefix, path2, pool), label2);

  options = FUNC7(pool);
  options->ignore_eol_style = TRUE;
  FUNC0(FUNC9(&output, pool));
  FUNC0(FUNC6(&diff, path1, path2,
                               options, pool));
  return FUNC8(output, diff,
                                       path1, path2,
                                       label1, label2,
                                       APR_LOCALE_CHARSET,
                                       NULL,
                                       options->show_c_function,
                                       options->context_size,
                                       cancel_func, cancel_baton,
                                       pool);
}