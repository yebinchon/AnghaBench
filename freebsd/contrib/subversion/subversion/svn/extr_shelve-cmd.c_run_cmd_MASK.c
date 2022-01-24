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
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_EXTERNAL_PROGRAM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,char const* const*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *cmd,
        const char *const *args,
        apr_pool_t *scratch_pool)
{
  apr_status_t apr_err;
  apr_file_t *outfile;
  svn_error_t *err;
  int exitcode;

  apr_err = FUNC1(&outfile, scratch_pool);
  if (apr_err)
    return FUNC3(apr_err, "Can't open stdout");

  err = FUNC4(NULL /*path*/, cmd, args,
                       &exitcode, NULL /*exitwhy*/,
                       TRUE /*inherit*/,
                       NULL /*infile*/, outfile, NULL /*errfile*/,
                       scratch_pool);
  if (err || exitcode)
    return FUNC2(SVN_ERR_EXTERNAL_PROGRAM, err,
                             FUNC0("Could not run external command '%s'"), cmd);
  return SVN_NO_ERROR;
}