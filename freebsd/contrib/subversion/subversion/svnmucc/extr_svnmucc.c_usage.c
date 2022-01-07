
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int _ (char*) ;
 int stderr ;
 int svn_cmdline_fprintf (int ,int *,int ) ;
 int svn_error_clear (int ) ;

__attribute__((used)) static void
usage(apr_pool_t *pool)
{
  svn_error_clear(svn_cmdline_fprintf
                  (stderr, pool, _("Type 'svnmucc --help' for usage.\n")));
}
