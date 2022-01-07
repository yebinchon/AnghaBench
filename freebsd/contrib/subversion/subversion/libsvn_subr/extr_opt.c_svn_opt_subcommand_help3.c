
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_opt_subcommand_desc2_t ;
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_option_t ;


 int FALSE ;
 scalar_t__ SVN_ERR_IO_PIPE_WRITE_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_1__* print_command_info2 (int const*,int const*,int const*,int ,int *,int ) ;
 int stderr ;
 int stdout ;
 TYPE_1__* svn_cmdline_fprintf (int ,int *,int ,char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_handle_error2 (TYPE_1__*,int ,int ,char*) ;
 int * svn_opt_get_canonical_subcommand2 (int const*,char const*) ;

void
svn_opt_subcommand_help3(const char *subcommand,
                         const svn_opt_subcommand_desc2_t *table,
                         const apr_getopt_option_t *options_table,
                         const int *global_options,
                         apr_pool_t *pool)
{
  const svn_opt_subcommand_desc2_t *cmd =
    svn_opt_get_canonical_subcommand2(table, subcommand);
  svn_error_t *err;

  if (cmd)
    err = print_command_info2(cmd, options_table, global_options,
                              TRUE, pool, stdout);
  else
    err = svn_cmdline_fprintf(stderr, pool,
                              _("\"%s\": unknown command.\n\n"), subcommand);

  if (err) {

    if (err->apr_err != SVN_ERR_IO_PIPE_WRITE_ERROR)
      svn_handle_error2(err, stderr, FALSE, "svn: ");
    svn_error_clear(err);
  }
}
