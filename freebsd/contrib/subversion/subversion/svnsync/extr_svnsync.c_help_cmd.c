
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int quiet; int version; } ;
typedef TYPE_2__ opt_baton_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int svn_opt_print_help4 (int *,char*,int ,int ,int ,int ,char const*,int ,int ,int *,int *,int *) ;
 int svn_ra_print_modules (TYPE_1__*,int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svnsync_cmd_table ;
 int svnsync_options ;

__attribute__((used)) static svn_error_t *
help_cmd(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  opt_baton_t *opt_baton = baton;

  const char *header =
    _("general usage: svnsync SUBCOMMAND DEST_URL  [ARGS & OPTIONS ...]\n"
      "Subversion repository replication tool.\n"
      "Type 'svnsync help <subcommand>' for help on a specific subcommand.\n"
      "Type 'svnsync --version' to see the program version and RA modules.\n"
      "\n"
      "Available subcommands:\n");

  const char *ra_desc_start
    = _("The following repository access (RA) modules are available:\n\n");

  svn_stringbuf_t *version_footer = svn_stringbuf_create(ra_desc_start,
                                                         pool);

  SVN_ERR(svn_ra_print_modules(version_footer, pool));

  SVN_ERR(svn_opt_print_help4(os, "svnsync",
                              opt_baton ? opt_baton->version : FALSE,
                              opt_baton ? opt_baton->quiet : FALSE,
                                                                      FALSE,
                              version_footer->data, header,
                              svnsync_cmd_table, svnsync_options, ((void*)0),
                              ((void*)0), pool));

  return SVN_NO_ERROR;
}
