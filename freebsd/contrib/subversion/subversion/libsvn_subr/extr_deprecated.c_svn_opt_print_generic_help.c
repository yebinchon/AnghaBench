
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ svn_opt_subcommand_desc_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_option_t ;
typedef int FILE ;


 int FALSE ;
 int * print_command_info (TYPE_1__ const*,int const*,int ,int *,int *) ;
 int stderr ;
 int * svn_cmdline_fputs (char const*,int *,int *) ;
 int svn_error_clear (int *) ;
 int svn_handle_error2 (int *,int ,int ,char*) ;

void
svn_opt_print_generic_help(const char *header,
                           const svn_opt_subcommand_desc_t *cmd_table,
                           const apr_getopt_option_t *opt_table,
                           const char *footer,
                           apr_pool_t *pool, FILE *stream)
{
  int i = 0;
  svn_error_t *err;

  if (header)
    if ((err = svn_cmdline_fputs(header, stream, pool)))
      goto print_error;

  while (cmd_table[i].name)
    {
      if ((err = svn_cmdline_fputs("   ", stream, pool))
          || (err = print_command_info(cmd_table + i, opt_table, FALSE,
                                       pool, stream))
          || (err = svn_cmdline_fputs("\n", stream, pool)))
        goto print_error;
      i++;
    }

  if ((err = svn_cmdline_fputs("\n", stream, pool)))
    goto print_error;

  if (footer)
    if ((err = svn_cmdline_fputs(footer, stream, pool)))
      goto print_error;

  return;

 print_error:
  svn_handle_error2(err, stderr, FALSE, "svn: ");
  svn_error_clear(err);
}
