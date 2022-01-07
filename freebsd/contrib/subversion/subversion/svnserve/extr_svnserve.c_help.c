
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ optch; scalar_t__ name; } ;


 int TRUE ;
 int _ (char*) ;
 int stdout ;
 int svn_cmdline_fprintf (int ,int *,char*,...) ;
 int svn_cmdline_fputs (int ,int ,int *) ;
 int svn_error_clear (int ) ;
 int svn_opt_format_option (char const**,TYPE_1__*,int ,int *) ;
 TYPE_1__* svnserve__options ;

__attribute__((used)) static void help(apr_pool_t *pool)
{
  apr_size_t i;
  svn_error_clear(svn_cmdline_fputs(_("usage: svnserve [-d | -i | -t | -X] "
                                      "[options]\n"
                                      "Subversion repository server.\n"
                                      "Type 'svnserve --version' to see the "
                                      "program version.\n"
                                      "\n"
                                      "Valid options:\n"),
                                      stdout, pool));

  for (i = 0; svnserve__options[i].name && svnserve__options[i].optch; i++)
    {
      const char *optstr;
      svn_opt_format_option(&optstr, svnserve__options + i, TRUE, pool);
      svn_error_clear(svn_cmdline_fprintf(stdout, pool, "  %s\n", optstr));
    }
  svn_error_clear(svn_cmdline_fprintf(stdout, pool, "\n"));
}
