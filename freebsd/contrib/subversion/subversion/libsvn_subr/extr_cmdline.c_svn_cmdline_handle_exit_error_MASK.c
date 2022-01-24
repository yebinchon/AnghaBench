#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SVN_ERR_IO_PIPE_WRITE_ERROR ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(svn_error_t *err,
                              apr_pool_t *pool,
                              const char *prefix)
{
  /* Issue #3014:
   * Don't print anything on broken pipes. The pipe was likely
   * closed by the process at the other end. We expect that
   * process to perform error reporting as necessary.
   *
   * ### This assumes that there is only one error in a chain for
   * ### SVN_ERR_IO_PIPE_WRITE_ERROR. See svn_cmdline_fputs(). */
  if (err->apr_err != SVN_ERR_IO_PIPE_WRITE_ERROR)
    FUNC1(err, stderr, FALSE, prefix);
  FUNC0(err);
  if (pool)
    FUNC2(pool);
  return EXIT_FAILURE;
}