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
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_CREATE ; 
 int APR_EXCL ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char *file,
                         const void *contents,
                         apr_size_t length,
                         apr_pool_t *scratch_pool)
{
  apr_file_t *f;
  apr_size_t written;
  svn_error_t *err = SVN_NO_ERROR;

  FUNC0(FUNC4(&f, file,
                           (APR_WRITE | APR_CREATE | APR_EXCL),
                           APR_OS_DEFAULT,
                           scratch_pool));
  if (length)
    err = FUNC5(f, contents, length, &written,
                                 scratch_pool);

  err = FUNC1(
                    err,
                    FUNC3(f, scratch_pool));

  if (err)
    {
      /* Our caller doesn't know if we left a file or not if we return
         an error. Better to cleanup after ourselves if we created the
         file. */
      return FUNC2(
                FUNC1(
                    err,
                    FUNC6(file, TRUE, scratch_pool)));
    }

  return SVN_NO_ERROR;
}