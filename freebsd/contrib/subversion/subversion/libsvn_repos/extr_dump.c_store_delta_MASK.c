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
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SET ; 
 int /*<<< orphan*/  SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_file_t **tempfile, svn_filesize_t *len,
            svn_fs_root_t *oldroot, const char *oldpath,
            svn_fs_root_t *newroot, const char *newpath, apr_pool_t *pool)
{
  svn_stream_t *temp_stream;
  apr_off_t offset;
  svn_txdelta_stream_t *delta_stream;
  svn_txdelta_window_handler_t wh;
  void *whb;

  /* Create a temporary file and open a stream to it. Note that we need
     the file handle in order to rewind it. */
  FUNC0(FUNC4(tempfile, NULL, NULL,
                                   svn_io_file_del_on_pool_cleanup,
                                   pool, pool));
  temp_stream = FUNC5(*tempfile, TRUE, pool);

  /* Compute the delta and send it to the temporary file. */
  FUNC0(FUNC1(&delta_stream, oldroot, oldpath,
                                       newroot, newpath, pool));
  FUNC7(&wh, &whb, temp_stream, 0,
                          SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, pool);
  FUNC0(FUNC6(delta_stream, wh, whb, pool));

  /* Get the length of the temporary file and rewind it. */
  FUNC0(FUNC2(&offset, *tempfile, pool));
  *len = offset;
  offset = 0;
  return FUNC3(*tempfile, APR_SET, &offset, pool);
}