#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ filetype; } ;
typedef  TYPE_1__ apr_finfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ APR_REG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_SHARING_VIOLATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(const char *path,
                    svn_boolean_t ignore_enoent,
                    apr_pool_t *scratch_pool)
{
  apr_status_t apr_err;
  const char *path_apr;

  FUNC4(FUNC10(&path_apr, path, scratch_pool));

  apr_err = FUNC8(path_apr, scratch_pool);

#ifdef WIN32
  /* If the target is read only NTFS reports EACCESS and FAT/FAT32
     reports EEXIST */
  if (APR_STATUS_IS_EACCES(apr_err) || APR_STATUS_IS_EEXIST(apr_err))
    {
      /* Set the destination file writable because Windows will not
         allow us to delete when path is read-only */
      SVN_ERR(svn_io_set_file_read_write(path, ignore_enoent, scratch_pool));
      apr_err = apr_file_remove(path_apr, scratch_pool);
    }

  /* Check to make sure we aren't trying to delete a directory */
  if (apr_err == APR_FROM_OS_ERROR(ERROR_ACCESS_DENIED)
      || apr_err == APR_FROM_OS_ERROR(ERROR_SHARING_VIOLATION))
    {
      apr_finfo_t finfo;

      if (!apr_stat(&finfo, path_apr, APR_FINFO_TYPE, scratch_pool)
          && finfo.filetype == APR_REG)
        {
          WIN32_RETRY_LOOP(apr_err, apr_file_remove(path_apr, scratch_pool));
        }
    }

  /* Just return the delete error */
#endif

  if (!apr_err)
    {
      return SVN_NO_ERROR;
    }
  else if (ignore_enoent && (FUNC3(apr_err)
                             || FUNC5(apr_err)))
    {
      return SVN_NO_ERROR;
    }
  else
    {
      return FUNC12(apr_err, FUNC7("Can't remove file '%s'"),
                                FUNC11(path, scratch_pool));
    }
}