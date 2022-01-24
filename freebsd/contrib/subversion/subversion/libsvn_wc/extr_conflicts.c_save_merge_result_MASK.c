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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,char const*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_skel_t **work_item,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  const char *source_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *edited_copy_abspath;
  const char *dir_abspath;
  const char *filename;

  FUNC1(&dir_abspath, &filename, local_abspath, scratch_pool);

  /* ### Should use preserved-conflict-file-exts. */
  /* Create the .edited file within this file's DIR_ABSPATH  */
  FUNC0(FUNC2(NULL,
                                     &edited_copy_abspath,
                                     dir_abspath,
                                     filename,
                                     ".edited",
                                     svn_io_file_del_none,
                                     scratch_pool, scratch_pool));
  FUNC0(FUNC3(work_item,
                                                db, local_abspath,
                                                source_abspath,
                                                edited_copy_abspath,
                                                result_pool, scratch_pool));
  return SVN_NO_ERROR;
}