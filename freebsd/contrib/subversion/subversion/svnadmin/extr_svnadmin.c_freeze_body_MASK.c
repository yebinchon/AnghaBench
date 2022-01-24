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
struct freeze_baton_t {int /*<<< orphan*/  status; int /*<<< orphan*/  args; int /*<<< orphan*/  command; } ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
            apr_pool_t *pool)
{
  struct freeze_baton_t *b = baton;
  apr_status_t apr_err;
  apr_file_t *infile, *outfile, *errfile;

  apr_err = FUNC2(&infile, pool);
  if (apr_err)
    return FUNC4(apr_err, "Can't open stdin");
  apr_err = FUNC3(&outfile, pool);
  if (apr_err)
    return FUNC4(apr_err, "Can't open stdout");
  apr_err = FUNC1(&errfile, pool);
  if (apr_err)
    return FUNC4(apr_err, "Can't open stderr");

  FUNC0(FUNC5(NULL, b->command, b->args, &b->status,
                         NULL, TRUE,
                         infile, outfile, errfile, pool));

  return SVN_NO_ERROR;
}