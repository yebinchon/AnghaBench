
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * (* close_directory ) (void*,int *) ;int (* change_dir_prop ) (void*,char const*,int const*,int *) ;int (* close_file ) (void*,int *,int *) ;int (* change_file_prop ) (void*,char const*,int const*,int *) ;int (* open_file ) (char const*,void*,int const,int *,void**) ;int (* open_root ) (void*,int const,int *,void**) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int stub1 (void*,int const,int *,void**) ;
 int stub2 (char const*,void*,int const,int *,void**) ;
 int stub3 (void*,char const*,int const*,int *) ;
 int stub4 (void*,int *,int *) ;
 int stub5 (void*,char const*,int const*,int *) ;
 int * stub6 (void*,int *) ;
 scalar_t__ const svn_node_file ;
 char* svn_uri_basename (char const*,int *) ;

__attribute__((used)) static
svn_error_t *
do_url_propset(const char *url,
               const char *propname,
               const svn_string_t *propval,
               const svn_node_kind_t kind,
               const svn_revnum_t base_revision_for_url,
               const svn_delta_editor_t *editor,
               void *edit_baton,
               apr_pool_t *pool)
{
  void *root_baton;

  SVN_ERR(editor->open_root(edit_baton, base_revision_for_url, pool,
                            &root_baton));

  if (kind == svn_node_file)
    {
      void *file_baton;
      const char *uri_basename = svn_uri_basename(url, pool);

      SVN_ERR(editor->open_file(uri_basename, root_baton,
                                base_revision_for_url, pool, &file_baton));
      SVN_ERR(editor->change_file_prop(file_baton, propname, propval, pool));
      SVN_ERR(editor->close_file(file_baton, ((void*)0), pool));
    }
  else
    {
      SVN_ERR(editor->change_dir_prop(root_baton, propname, propval, pool));
    }

  return editor->close_directory(root_baton, pool);
}
