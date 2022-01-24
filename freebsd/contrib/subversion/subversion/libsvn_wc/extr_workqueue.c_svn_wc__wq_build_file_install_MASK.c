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
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* OP_FILE_INSTALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_skel_t **work_item,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              const char *source_abspath,
                              svn_boolean_t use_commit_times,
                              svn_boolean_t record_fileinfo,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  const char *wri_abspath;
  *work_item = FUNC2(result_pool);

  /* Use the directory of the file to install as wri_abspath to avoid
     filestats on just obtaining the wc-root */
  wri_abspath = FUNC1(local_abspath, scratch_pool);

  /* If a SOURCE_ABSPATH was provided, then put it into the skel. If this
     value is not provided, then the file's pristine contents will be used. */
  if (source_abspath != NULL)
    {
      FUNC0(FUNC5(&local_relpath, db, wri_abspath,
                                    source_abspath,
                                    result_pool, scratch_pool));

      FUNC4(local_relpath, *work_item, result_pool);
    }

  FUNC0(FUNC5(&local_relpath, db, wri_abspath,
                                local_abspath, result_pool, scratch_pool));

  FUNC3(record_fileinfo, *work_item, result_pool);
  FUNC3(use_commit_times, *work_item, result_pool);
  FUNC4(local_relpath, *work_item, result_pool);
  FUNC4(OP_FILE_INSTALL, *work_item, result_pool);

  return SVN_NO_ERROR;
}