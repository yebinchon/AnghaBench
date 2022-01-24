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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_x__batch_fsync_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  FILE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC4(svn_fs_x__batch_fsync_t *batch,
                               const char *path,
                               apr_pool_t *scratch_pool)
{
  apr_file_t *file;

#ifdef SVN_ON_POSIX

  /* On POSIX, we need to sync the parent directory because it contains
   * the name for the file / folder given by PATH. */
  path = svn_dirent_dirname(path, scratch_pool);
  SVN_ERR(internal_open_file(&file, batch, path, APR_READ, scratch_pool));

#else

  svn_node_kind_t kind;

  /* On non-POSIX systems, we assume that sync'ing the given PATH is the
   * right thing to do.  Also, we assume that only files may be sync'ed. */
  FUNC0(FUNC3(path, &kind, scratch_pool));
  if (kind == svn_node_file)
    FUNC0(FUNC1(&file, batch, path, FILE_FLAGS,
                               scratch_pool));

#endif

  return SVN_NO_ERROR;
}