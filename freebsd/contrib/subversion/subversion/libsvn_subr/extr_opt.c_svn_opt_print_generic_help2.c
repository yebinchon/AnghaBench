
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_opt_subcommand_desc2_t ;
struct TYPE_5__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_option_t ;
typedef int FILE ;


 int FALSE ;
 scalar_t__ SVN_ERR_IO_PIPE_WRITE_ERROR ;
 TYPE_1__* print_generic_help_body (char const*,int const*,int const*,char const*,int *,int *) ;
 int stderr ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_handle_error2 (TYPE_1__*,int ,int ,char*) ;

void
svn_opt_print_generic_help2(const char *header,
                            const svn_opt_subcommand_desc2_t *cmd_table,
                            const apr_getopt_option_t *opt_table,
                            const char *footer,
                            apr_pool_t *pool, FILE *stream)
{
  svn_error_t *err;

  err = print_generic_help_body(header, cmd_table, opt_table, footer, pool,
                                stream);
  if (err && err->apr_err != SVN_ERR_IO_PIPE_WRITE_ERROR)
    svn_handle_error2(err, stderr, FALSE, "svn: ");
  svn_error_clear(err);
}
