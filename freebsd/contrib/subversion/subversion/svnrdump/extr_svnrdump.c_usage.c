
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int _ (char*) ;
 int ensure_appname (char const*,int *) ;
 int stderr ;
 int * svn_cmdline_fprintf (int ,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
usage(const char *progname,
      apr_pool_t *pool)
{
  return svn_cmdline_fprintf(stderr, pool,
                             _("Type '%s help' for usage.\n"),
                             ensure_appname(progname, pool));
}
