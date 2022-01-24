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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  SVN_ERR_IO_PIPE_WRITE_ERROR ; 
 int /*<<< orphan*/  SVN_ERR_IO_WRITE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(FILE *stream)
{
  /* See comment in svn_cmdline_fputs about use of errno and stdio. */
  errno = 0;
  if (FUNC3(stream) == EOF)
    {
      if (FUNC2()) /* is errno on POSIX */
        {
          /* ### Issue #3014: Return a specific error for broken pipes,
           * ### with a single element in the error chain. */
          if (FUNC0(FUNC2()))
            return FUNC4(SVN_ERR_IO_PIPE_WRITE_ERROR, NULL, NULL);
          else
            return FUNC5(FUNC2(), FUNC1("Write error"));
        }
      else
        return FUNC4(SVN_ERR_IO_WRITE_ERROR, NULL, NULL);
    }

  return SVN_NO_ERROR;
}