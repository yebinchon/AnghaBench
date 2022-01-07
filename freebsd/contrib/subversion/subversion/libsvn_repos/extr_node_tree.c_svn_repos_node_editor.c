
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_7__ {void* change_dir_prop; void* change_file_prop; int apply_textdelta; int open_file; int add_file; int open_directory; int add_directory; int delete_entry; int open_root; } ;
typedef TYPE_2__ svn_delta_editor_t ;
struct edit_baton {int * base_root; int * root; int fs; int * node_pool; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 struct edit_baton* apr_pcalloc (int *,int) ;
 void* change_node_prop ;
 int delete_entry ;
 int open_directory ;
 int open_file ;
 int open_root ;
 TYPE_2__* svn_delta_default_editor (int *) ;

svn_error_t *
svn_repos_node_editor(const svn_delta_editor_t **editor,
                      void **edit_baton,
                      svn_repos_t *repos,
                      svn_fs_root_t *base_root,
                      svn_fs_root_t *root,
                      apr_pool_t *node_pool,
                      apr_pool_t *pool)
{
  svn_delta_editor_t *my_editor;
  struct edit_baton *my_edit_baton;


  my_editor = svn_delta_default_editor(pool);
  my_editor->open_root = open_root;
  my_editor->delete_entry = delete_entry;
  my_editor->add_directory = add_directory;
  my_editor->open_directory = open_directory;
  my_editor->add_file = add_file;
  my_editor->open_file = open_file;
  my_editor->apply_textdelta = apply_textdelta;
  my_editor->change_file_prop = change_node_prop;
  my_editor->change_dir_prop = change_node_prop;


  my_edit_baton = apr_pcalloc(pool, sizeof(*my_edit_baton));
  my_edit_baton->node_pool = node_pool;
  my_edit_baton->fs = repos->fs;
  my_edit_baton->root = root;
  my_edit_baton->base_root = base_root;

  *editor = my_editor;
  *edit_baton = my_edit_baton;

  return SVN_NO_ERROR;
}
