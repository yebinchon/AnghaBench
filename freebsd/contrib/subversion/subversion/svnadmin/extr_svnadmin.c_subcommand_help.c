
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {int quiet; int version; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int cmd_table ;
 int options_table ;
 int svn_fs_print_modules (TYPE_1__*,int *) ;
 int svn_opt_print_help4 (int *,char*,int ,int ,int ,int ,char const*,int ,int ,int *,int *,int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_help(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  const char *header =
    _("general usage: svnadmin SUBCOMMAND REPOS_PATH  [ARGS & OPTIONS ...]\n"
      "Subversion repository administration tool.\n"
      "Type 'svnadmin help <subcommand>' for help on a specific subcommand.\n"
      "Type 'svnadmin --version' to see the program version and FS modules.\n"
      "\n"
      "Available subcommands:\n");

  const char *fs_desc_start
    = _("The following repository back-end (FS) modules are available:\n\n");

  svn_stringbuf_t *version_footer;

  version_footer = svn_stringbuf_create(fs_desc_start, pool);
  SVN_ERR(svn_fs_print_modules(version_footer, pool));

  SVN_ERR(svn_opt_print_help4(os, "svnadmin",
                              opt_state ? opt_state->version : FALSE,
                              opt_state ? opt_state->quiet : FALSE,
                                                                      FALSE,
                              version_footer->data,
                              header, cmd_table, options_table, ((void*)0), ((void*)0),
                              pool));

  return SVN_NO_ERROR;
}
