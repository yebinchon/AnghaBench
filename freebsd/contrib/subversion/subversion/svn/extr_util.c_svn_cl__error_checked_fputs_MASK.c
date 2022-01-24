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
 int /*<<< orphan*/  SVN_ERR_IO_WRITE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC5(const char *string, FILE* stream)
{
  /* On POSIX systems, errno will be set on an error in fputs, but this might
     not be the case on other platforms.  We reset errno and only
     use it if it was set by the below fputs call.  Else, we just return
     a generic error. */
  errno = 0;

  if (FUNC2(string, stream) == EOF)
    {
      if (FUNC1()) /* is errno on POSIX */
        return FUNC4(FUNC1(), FUNC0("Write error"));
      else
        return FUNC3(SVN_ERR_IO_WRITE_ERROR, NULL, NULL);
    }

  return SVN_NO_ERROR;
}