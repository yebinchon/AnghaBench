#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* name; char** aliases; char* help; scalar_t__* valid_options; } ;
typedef  TYPE_1__ svn_opt_subcommand_desc_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {scalar_t__ description; } ;
typedef  TYPE_2__ apr_getopt_option_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 size_t SVN_OPT_MAX_ALIASES ; 
 size_t SVN_OPT_MAX_OPTIONS ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,TYPE_2__ const*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (scalar_t__,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const svn_opt_subcommand_desc_t *cmd,
                   const apr_getopt_option_t *options_table,
                   svn_boolean_t help,
                   apr_pool_t *pool,
                   FILE *stream)
{
  svn_boolean_t first_time;
  apr_size_t i;

  /* Print the canonical command name. */
  FUNC0(FUNC3(cmd->name, stream, pool));

  /* Print the list of aliases. */
  first_time = TRUE;
  for (i = 0; i < SVN_OPT_MAX_ALIASES; i++)
    {
      if (cmd->aliases[i] == NULL)
        break;

      if (first_time) {
        FUNC0(FUNC3(" (", stream, pool));
        first_time = FALSE;
      }
      else
        FUNC0(FUNC3(", ", stream, pool));

      FUNC0(FUNC3(cmd->aliases[i], stream, pool));
    }

  if (! first_time)
    FUNC0(FUNC3(")", stream, pool));

  if (help)
    {
      const apr_getopt_option_t *option;
      svn_boolean_t have_options = FALSE;

      FUNC0(FUNC2(stream, pool, ": %s", FUNC1(cmd->help)));

      /* Loop over all valid option codes attached to the subcommand */
      for (i = 0; i < SVN_OPT_MAX_OPTIONS; i++)
        {
          if (cmd->valid_options[i])
            {
              if (!have_options)
                {
                  FUNC0(FUNC3(FUNC1("\nValid options:\n"),
                                            stream, pool));
                  have_options = TRUE;
                }

              /* convert each option code into an option */
              option =
                FUNC5(cmd->valid_options[i],
                                              options_table, NULL, pool);

              /* print the option's docstring */
              if (option && option->description)
                {
                  const char *optstr;
                  FUNC4(&optstr, option, TRUE, pool);
                  FUNC0(FUNC2(stream, pool, "  %s\n",
                                              optstr));
                }
            }
        }

      if (have_options)
        FUNC0(FUNC2(stream, pool, "\n"));
    }

  return SVN_NO_ERROR;
}