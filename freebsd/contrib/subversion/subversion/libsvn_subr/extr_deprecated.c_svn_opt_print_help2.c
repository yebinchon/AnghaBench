
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_subcommand_desc2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
typedef int apr_getopt_option_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_opt_print_help4 (int *,char const*,int ,int ,int ,char const*,char const*,int const*,int const*,int *,char const*,int *) ;

svn_error_t *
svn_opt_print_help2(apr_getopt_t *os,
                    const char *pgm_name,
                    svn_boolean_t print_version,
                    svn_boolean_t quiet,
                    const char *version_footer,
                    const char *header,
                    const svn_opt_subcommand_desc2_t *cmd_table,
                    const apr_getopt_option_t *option_table,
                    const char *footer,
                    apr_pool_t *pool)
{
  return svn_error_trace(svn_opt_print_help4(os,
                                             pgm_name,
                                             print_version,
                                             quiet,
                                             FALSE,
                                             version_footer,
                                             header,
                                             cmd_table,
                                             option_table,
                                             ((void*)0),
                                             footer,
                                             pool));
}
