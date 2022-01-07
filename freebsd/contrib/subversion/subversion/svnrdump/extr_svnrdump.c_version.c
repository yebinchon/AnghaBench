
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int _ (char*) ;
 int ensure_appname (char const*,int *) ;
 int * svn_opt_print_help4 (int *,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *,int *) ;
 int svn_ra_print_modules (TYPE_1__*,int *) ;
 TYPE_1__* svn_stringbuf_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
version(const char *progname,
        svn_boolean_t quiet,
        apr_pool_t *pool)
{
  svn_stringbuf_t *version_footer =
    svn_stringbuf_create(_("The following repository access (RA) modules "
                           "are available:\n\n"),
                         pool);

  SVN_ERR(svn_ra_print_modules(version_footer, pool));
  return svn_opt_print_help4(((void*)0), ensure_appname(progname, pool),
                             TRUE, quiet, FALSE, version_footer->data,
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pool);
}
