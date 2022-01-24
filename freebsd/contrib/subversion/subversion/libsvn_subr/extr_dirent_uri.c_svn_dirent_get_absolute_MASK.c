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

/* Variables and functions */
 int /*<<< orphan*/  APR_FILEPATH_NOTRELATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_FILENAME ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

svn_error_t *
FUNC15(const char **pabsolute,
                        const char *relative,
                        apr_pool_t *pool)
{
  char *buffer;
  apr_status_t apr_err;
  const char *path_apr;

  FUNC1(! FUNC14(relative));

  /* Merge the current working directory with the relative dirent. */
  FUNC0(FUNC11(&path_apr, relative, pool));

  apr_err = FUNC3(&buffer, NULL,
                               path_apr,
                               APR_FILEPATH_NOTRELATIVE,
                               pool);
  if (apr_err)
    {
      /* In some cases when the passed path or its ancestor(s) do not exist
         or no longer exist apr returns an error.

         In many of these cases we would like to return a path anyway, when the
         passed path was already a safe absolute path. So check for that now to
         avoid an error.

         svn_dirent_is_absolute() doesn't perform the necessary checks to see
         if the path doesn't need post processing to be in the canonical absolute
         format.
         */

      if (FUNC6(relative)
          && FUNC7(relative, pool)
          && !FUNC13(relative))
        {
          *pabsolute = FUNC4(pool, relative);
          return SVN_NO_ERROR;
        }

      return FUNC10(SVN_ERR_BAD_FILENAME,
                               FUNC9(apr_err, NULL, NULL),
                               FUNC2("Couldn't determine absolute path of '%s'"),
                               FUNC8(relative, pool));
    }

  FUNC0(FUNC12(pabsolute, buffer, pool));
  *pabsolute = FUNC5(*pabsolute, pool);
  return SVN_NO_ERROR;
}