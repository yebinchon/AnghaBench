
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int abort_edit; int close_edit; int absent_file; int close_file; int change_file_prop; int apply_textdelta; int open_file; int add_file; int absent_directory; int close_directory; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; int set_target_revision; } ;
typedef TYPE_1__ svn_delta_editor_t ;
struct edit_baton {int prefix; scalar_t__ indent_level; int * out; void* wrapped_edit_baton; TYPE_1__ const* wrapped_editor; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int TRUE ;
 int abort_edit ;
 int absent_directory ;
 int absent_file ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 scalar_t__ apr_file_open_stdout (int **,int *) ;
 void* apr_palloc (int *,int) ;
 int apr_pstrcat (int *,char*,char const*,int ) ;
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
 int * svn_error_wrap_apr (scalar_t__,char*) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_delta__get_debug_editor(const svn_delta_editor_t **editor,
                            void **edit_baton,
                            const svn_delta_editor_t *wrapped_editor,
                            void *wrapped_edit_baton,
                            const char *prefix,
                            apr_pool_t *pool)
{
  svn_delta_editor_t *tree_editor = apr_palloc(pool, sizeof(*tree_editor));
  struct edit_baton *eb = apr_palloc(pool, sizeof(*eb));
  apr_file_t *errfp;
  svn_stream_t *out;

  apr_status_t apr_err = apr_file_open_stdout(&errfp, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Problem opening stderr");

  out = svn_stream_from_aprfile2(errfp, TRUE, pool);

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
  tree_editor->change_file_prop = change_file_prop;
  tree_editor->close_file = close_file;
  tree_editor->absent_file = absent_file;
  tree_editor->close_edit = close_edit;
  tree_editor->abort_edit = abort_edit;

  eb->wrapped_editor = wrapped_editor;
  eb->wrapped_edit_baton = wrapped_edit_baton;
  eb->out = out;
  eb->indent_level = 0;

  eb->prefix = apr_pstrcat(pool, "DBG: ", prefix, SVN_VA_NULL);

  *editor = tree_editor;
  *edit_baton = eb;

  return SVN_NO_ERROR;
}
