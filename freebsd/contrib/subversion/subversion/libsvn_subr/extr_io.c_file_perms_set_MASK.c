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
typedef  int /*<<< orphan*/  apr_fileperms_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *fname, apr_fileperms_t perms,
               apr_pool_t *pool)
{
  const char *fname_apr;
  apr_status_t status;

  FUNC0(FUNC3(&fname_apr, fname, pool));

  status = FUNC2(fname_apr, perms);
  if (status)
    return FUNC4(status, FUNC1("Can't set permissions on '%s'"),
                              fname);
  else
    return SVN_NO_ERROR;
}