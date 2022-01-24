#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (char const*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(const char *old_filename,
                           const char *new_filename,
                           const char *perms_reference,
                           svn_boolean_t flush_to_disk,
                           apr_pool_t *pool)
{
  svn_error_t *err;
  apr_file_t *file;

  /* Copying permissions is a no-op on WIN32. */
  FUNC1(FUNC6(perms_reference, old_filename, pool));

  /* Move the file into place. */
  err = FUNC10(old_filename, new_filename, flush_to_disk, pool);
  if (err && FUNC0(err->apr_err))
    {
      /* Can't rename across devices; fall back to copying. */
      FUNC3(err);
      FUNC1(FUNC5(old_filename, new_filename, TRUE, pool));

      /* Flush the target of the copy to disk.
         ### The code below is duplicates svn_io_file_rename2(), because
             currently we don't have the svn_io_copy_file2() function with
             a flush_to_disk argument. */
      if (flush_to_disk)
        {
          FUNC1(FUNC9(&file, new_filename, APR_WRITE,
                                   APR_OS_DEFAULT, pool));
          FUNC1(FUNC8(file, pool));
          FUNC1(FUNC7(file, pool));
        }

#ifdef SVN_ON_POSIX
      if (flush_to_disk)
        {
          /* On POSIX, the file name is stored in the file's directory entry.
             Hence, we need to fsync() that directory as well.
             On other operating systems, we'd only be asking for trouble
             by trying to open and fsync a directory. */
          const char *dirname;

          dirname = svn_dirent_dirname(new_filename, pool);
          SVN_ERR(svn_io_file_open(&file, dirname, APR_READ, APR_OS_DEFAULT,
                                   pool));
          SVN_ERR(svn_io_file_flush_to_disk(file, pool));
          SVN_ERR(svn_io_file_close(file, pool));
        }
#endif
    }
  else if (err)
    return FUNC4(err);

  return SVN_NO_ERROR;
}