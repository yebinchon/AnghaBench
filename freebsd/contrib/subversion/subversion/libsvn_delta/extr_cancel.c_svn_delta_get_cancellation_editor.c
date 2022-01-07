
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int abort_edit; int close_edit; int absent_file; int close_file; int change_file_prop; int apply_textdelta_stream; int apply_textdelta; int open_file; int add_file; int absent_directory; int close_directory; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; int set_target_revision; } ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef scalar_t__ svn_cancel_func_t ;
struct edit_baton {void* cancel_baton; scalar_t__ cancel_func; void* wrapped_edit_baton; TYPE_1__ const* wrapped_editor; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int abort_edit ;
 int absent_directory ;
 int absent_file ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 int apply_textdelta_stream ;
 struct edit_baton* apr_palloc (int *,int) ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_directory ;
 int close_edit ;
 int close_file ;
 int delete_entry ;
 int open_directory ;
 int open_file ;
 int open_root ;
 int set_target_revision ;
 TYPE_1__* svn_delta_default_editor (int *) ;

svn_error_t *
svn_delta_get_cancellation_editor(svn_cancel_func_t cancel_func,
                                  void *cancel_baton,
                                  const svn_delta_editor_t *wrapped_editor,
                                  void *wrapped_edit_baton,
                                  const svn_delta_editor_t **editor,
                                  void **edit_baton,
                                  apr_pool_t *pool)
{
  if (cancel_func)
    {
      svn_delta_editor_t *tree_editor = svn_delta_default_editor(pool);
      struct edit_baton *eb = apr_palloc(pool, sizeof(*eb));

      tree_editor->set_target_revision = set_target_revision;
      tree_editor->open_root = open_root;
      tree_editor->delete_entry = delete_entry;
      tree_editor->add_directory = add_directory;
      tree_editor->open_directory = open_directory;
      tree_editor->change_dir_prop = change_dir_prop;
      tree_editor->close_directory = close_directory;
      tree_editor->absent_directory = absent_directory;
      tree_editor->add_file = add_file;
      tree_editor->open_file = open_file;
      tree_editor->apply_textdelta = apply_textdelta;
      tree_editor->apply_textdelta_stream = apply_textdelta_stream;
      tree_editor->change_file_prop = change_file_prop;
      tree_editor->close_file = close_file;
      tree_editor->absent_file = absent_file;
      tree_editor->close_edit = close_edit;
      tree_editor->abort_edit = abort_edit;

      eb->wrapped_editor = wrapped_editor;
      eb->wrapped_edit_baton = wrapped_edit_baton;
      eb->cancel_func = cancel_func;
      eb->cancel_baton = cancel_baton;

      *editor = tree_editor;
      *edit_baton = eb;
    }
  else
    {
      *editor = wrapped_editor;
      *edit_baton = wrapped_edit_baton;
    }

  return SVN_NO_ERROR;
}
