
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_subcommand_desc2_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_option_t ;


 int svn_opt_subcommand_help3 (char const*,int const*,int const*,int *,int *) ;

void
svn_opt_subcommand_help2(const char *subcommand,
                         const svn_opt_subcommand_desc2_t *table,
                         const apr_getopt_option_t *options_table,
                         apr_pool_t *pool)
{
  svn_opt_subcommand_help3(subcommand, table, options_table,
                           ((void*)0), pool);
}
