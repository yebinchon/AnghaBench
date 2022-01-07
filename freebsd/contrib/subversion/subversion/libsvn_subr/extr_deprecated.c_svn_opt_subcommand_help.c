
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_subcommand_desc_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_option_t ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int * print_command_info (int const*,int const*,int ,int *,int ) ;
 int stderr ;
 int stdout ;
 int * svn_cmdline_fprintf (int ,int *,int ,char const*) ;
 int svn_error_clear (int *) ;
 int svn_handle_error2 (int *,int ,int ,char*) ;
 int * svn_opt_get_canonical_subcommand (int const*,char const*) ;

void
svn_opt_subcommand_help(const char *subcommand,
                        const svn_opt_subcommand_desc_t *table,
                        const apr_getopt_option_t *options_table,
                        apr_pool_t *pool)
{
  const svn_opt_subcommand_desc_t *cmd =
    svn_opt_get_canonical_subcommand(table, subcommand);
  svn_error_t *err;

  if (cmd)
    err = print_command_info(cmd, options_table, TRUE, pool, stdout);
  else
    err = svn_cmdline_fprintf(stderr, pool,
                              _("\"%s\": unknown command.\n\n"), subcommand);

  if (err) {
    svn_handle_error2(err, stderr, FALSE, "svn: ");
    svn_error_clear(err);
  }
}
