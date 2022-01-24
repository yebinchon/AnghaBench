#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_opt_subcommand_desc2_t ;
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SVN_ERR_IO_PIPE_WRITE_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,char const*) ; 

void
FUNC6(const char *subcommand,
                         const svn_opt_subcommand_desc2_t *table,
                         const apr_getopt_option_t *options_table,
                         const int *global_options,
                         apr_pool_t *pool)
{
  const svn_opt_subcommand_desc2_t *cmd =
    FUNC5(table, subcommand);
  svn_error_t *err;

  if (cmd)
    err = FUNC1(cmd, options_table, global_options,
                              TRUE, pool, stdout);
  else
    err = FUNC2(stderr, pool,
                              FUNC0("\"%s\": unknown command.\n\n"), subcommand);

  if (err) {
    /* Issue #3014: Don't print anything on broken pipes. */
    if (err->apr_err != SVN_ERR_IO_PIPE_WRITE_ERROR)
      FUNC4(err, stderr, FALSE, "svn: ");
    FUNC3(err);
  }
}