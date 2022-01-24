#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ name; } ;
typedef  TYPE_1__ svn_opt_subcommand_desc2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_option_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const char *header,
                        const svn_opt_subcommand_desc2_t *cmd_table,
                        const apr_getopt_option_t *opt_table,
                        const char *footer,
                        apr_pool_t *pool, FILE *stream)
{
  int i = 0;

  if (header)
    FUNC0(FUNC2(header, stream, pool));

  while (cmd_table[i].name)
    {
      FUNC0(FUNC2("   ", stream, pool));
      FUNC0(FUNC1(cmd_table + i, opt_table,
                                  NULL, FALSE,
                                  pool, stream));
      FUNC0(FUNC2("\n", stream, pool));
      i++;
    }

  FUNC0(FUNC2("\n", stream, pool));

  if (footer)
    FUNC0(FUNC2(footer, stream, pool));

  return SVN_NO_ERROR;
}