
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_opt_print_help4 (int *,char*,int ,int ,int ,int ,int *,int *,int *,int *,int *,int *) ;
 int svn_ra_print_modules (TYPE_1__*,int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;

__attribute__((used)) static svn_error_t *
display_version(apr_pool_t *pool)
{
  const char *ra_desc_start
    = "The following repository access (RA) modules are available:\n\n";
  svn_stringbuf_t *version_footer;

  version_footer = svn_stringbuf_create(ra_desc_start, pool);
  SVN_ERR(svn_ra_print_modules(version_footer, pool));

  SVN_ERR(svn_opt_print_help4(((void*)0), "svnmucc", TRUE, FALSE, FALSE,
                              version_footer->data,
                              ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pool));

  return SVN_NO_ERROR;
}
