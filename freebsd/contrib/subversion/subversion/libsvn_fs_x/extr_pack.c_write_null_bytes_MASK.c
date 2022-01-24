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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(apr_file_t *dest,
                 apr_off_t size,
                 apr_pool_t *scratch_pool)
{
  /* Have a collection of high-quality, easy to access NUL bytes handy. */
  enum { BUFFER_SIZE = 1024 };
  static const char buffer[BUFFER_SIZE] = { 0 };

  /* copy SIZE of them into the file's buffer */
  while (size)
    {
      apr_size_t to_write = FUNC0(size, BUFFER_SIZE);
      FUNC1(FUNC2(dest, buffer, to_write, NULL,
                                     scratch_pool));
      size -= to_write;
    }

  return SVN_NO_ERROR;
}