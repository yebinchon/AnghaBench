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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(char **pbuf,
                svn_filesize_t *actual_length,
                svn_stream_t *stream,
                apr_size_t len,
                apr_pool_t *pool)
{
  char *buf = FUNC1(pool, len + 1);
  apr_size_t numread;
  char c;

  numread = len;
  FUNC0(FUNC5(stream, buf, &numread));
  *actual_length += numread;
  if (numread != len)
    return FUNC4(FUNC3());
  buf[len] = '\0';

  /* Suck up extra newline after key data */
  numread = 1;
  FUNC0(FUNC5(stream, &c, &numread));
  *actual_length += numread;
  if (numread != 1)
    return FUNC4(FUNC3());
  if (c != '\n')
    return FUNC4(FUNC2());

  *pbuf = buf;
  return SVN_NO_ERROR;
}