
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quiet; int version; } ;
typedef TYPE_1__ svnfsfs__opt_state ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int cmd_table ;
 int options_table ;
 int svn_opt_print_help4 (int *,char*,int ,int ,int ,int *,char const*,int ,int ,int *,int *,int *) ;

svn_error_t *
subcommand__help(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svnfsfs__opt_state *opt_state = baton;
  const char *header =
    _("general usage: svnfsfs SUBCOMMAND REPOS_PATH  [ARGS & OPTIONS ...]\n"
      "Subversion FSFS repository manipulation tool.\n"
      "Type 'svnfsfs help <subcommand>' for help on a specific subcommand.\n"
      "Type 'svnfsfs --version' to see the program version.\n"
      "\n"
      "Available subcommands:\n");

  SVN_ERR(svn_opt_print_help4(os, "svnfsfs",
                              opt_state ? opt_state->version : FALSE,
                              opt_state ? opt_state->quiet : FALSE,
                                                                      FALSE,
                              ((void*)0),
                              header, cmd_table, options_table, ((void*)0), ((void*)0),
                              pool));

  return SVN_NO_ERROR;
}
