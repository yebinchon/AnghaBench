
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* valid_options; } ;
typedef TYPE_1__ svn_opt_subcommand_desc_t ;
typedef int svn_boolean_t ;
typedef size_t apr_size_t ;


 int FALSE ;
 size_t SVN_OPT_MAX_OPTIONS ;
 int TRUE ;

svn_boolean_t
svn_opt_subcommand_takes_option(const svn_opt_subcommand_desc_t *command,
                                int option_code)
{
  apr_size_t i;

  for (i = 0; i < SVN_OPT_MAX_OPTIONS; i++)
    if (command->valid_options[i] == option_code)
      return TRUE;

  return FALSE;
}
