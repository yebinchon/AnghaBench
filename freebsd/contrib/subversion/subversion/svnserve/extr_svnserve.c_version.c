
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 char* _ (char*) ;
 int svn_fs_print_modules (TYPE_1__*,int *) ;
 int * svn_opt_print_help4 (int *,char*,int ,int ,int ,int ,int *,int *,int *,int *,int *,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;

__attribute__((used)) static svn_error_t * version(svn_boolean_t quiet, apr_pool_t *pool)
{
  const char *fs_desc_start
    = _("The following repository back-end (FS) modules are available:\n\n");

  svn_stringbuf_t *version_footer;

  version_footer = svn_stringbuf_create(fs_desc_start, pool);
  SVN_ERR(svn_fs_print_modules(version_footer, pool));






  return svn_opt_print_help4(((void*)0), "svnserve", TRUE, quiet, FALSE,
                             version_footer->data,
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pool);
}
