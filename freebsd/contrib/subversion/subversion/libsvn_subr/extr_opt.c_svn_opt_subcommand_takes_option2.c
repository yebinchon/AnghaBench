
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_subcommand_desc2_t ;
typedef int svn_boolean_t ;


 int svn_opt_subcommand_takes_option3 (int const*,int,int *) ;

svn_boolean_t
svn_opt_subcommand_takes_option2(const svn_opt_subcommand_desc2_t *command,
                                 int option_code)
{
  return svn_opt_subcommand_takes_option3(command,
                                          option_code,
                                          ((void*)0));
}
