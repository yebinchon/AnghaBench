
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int FALSE ;
 char* _ (char*) ;
 int * svn_opt_print_help4 (int *,char*,int ,int ,int ,int *,char const*,int ,int ,int *,int *,int *) ;
 int svnrdump__cmd_table ;
 int svnrdump__options ;

__attribute__((used)) static svn_error_t *
help_cmd(apr_getopt_t *os,
         void *baton,
         apr_pool_t *pool)
{
  const char *header =
    _("general usage: svnrdump SUBCOMMAND URL [-r LOWER[:UPPER]]\n"
      "Subversion remote repository dump and load tool.\n"
      "Type 'svnrdump help <subcommand>' for help on a specific subcommand.\n"
      "Type 'svnrdump --version' to see the program version and RA modules.\n"
      "\n"
      "Available subcommands:\n");

  return svn_opt_print_help4(os, "svnrdump", FALSE, FALSE, FALSE, ((void*)0),
                             header, svnrdump__cmd_table, svnrdump__options,
                             ((void*)0), ((void*)0), pool);
}
