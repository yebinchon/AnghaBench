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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_os_file_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_FULLFSYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *FUNC13(apr_file_t *file,
                                       apr_pool_t *pool)
{
  apr_os_file_t filehand;
  const char *fname;
  apr_status_t apr_err;

  /* We need this only in case of an error but this is cheap to get -
   * so we do it here for clarity. */
  apr_err = FUNC5(&fname, file);
  if (apr_err)
    return FUNC10(apr_err, FUNC4("Can't get file name"));

  /* ### In apr 1.4+ we could delegate most of this function to
         apr_file_sync(). The only major difference is that this doesn't
         contain the retry loop for EINTR on linux. */

  /* First make sure that any user-space buffered data is flushed. */
  FUNC3(FUNC11(file, pool));

  FUNC7(&filehand, file);

  /* Call the operating system specific function to actually force the
     data to disk. */
  {
#ifdef WIN32

    if (! FlushFileBuffers(filehand))
        return svn_error_wrap_apr(apr_get_os_error(),
                                  _("Can't flush file '%s' to disk"),
                                  try_utf8_from_internal_style(fname, pool));

#else
      int rv;

      do {
#ifdef F_FULLFSYNC
        rv = fcntl(filehand, F_FULLFSYNC, 0);
#else
        rv = FUNC9(filehand);
#endif
      } while (rv == -1 && FUNC0(FUNC6()));

      /* If the file is in a memory filesystem, fsync() may return
         EINVAL.  Presumably the user knows the risks, and we can just
         ignore the error. */
      if (rv == -1 && FUNC1(FUNC6()))
        return SVN_NO_ERROR;

      if (rv == -1)
        return FUNC10(FUNC6(),
                                  FUNC4("Can't flush file '%s' to disk"),
                                  FUNC12(fname, pool));

#endif
  }
  return SVN_NO_ERROR;
}