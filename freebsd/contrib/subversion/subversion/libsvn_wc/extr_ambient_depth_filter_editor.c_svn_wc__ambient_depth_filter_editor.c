
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int close_edit; int absent_file; int close_file; int change_file_prop; int apply_textdelta; int open_file; int add_file; int absent_directory; int close_directory; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; int set_target_revision; } ;
typedef TYPE_1__ svn_delta_editor_t ;
struct edit_baton {char const* anchor_abspath; char const* target; int * db; void* wrapped_edit_baton; TYPE_1__ const* wrapped_editor; } ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int absent_directory ;
 int absent_file ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 struct edit_baton* apr_pcalloc (int *,int) ;
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
 int svn_dirent_is_absolute (char const*) ;

svn_error_t *
svn_wc__ambient_depth_filter_editor(const svn_delta_editor_t **editor,
                                    void **edit_baton,
                                    svn_wc__db_t *db,
                                    const char *anchor_abspath,
                                    const char *target,
                                    const svn_delta_editor_t *wrapped_editor,
                                    void *wrapped_edit_baton,
                                    apr_pool_t *result_pool)
{
  svn_delta_editor_t *depth_filter_editor;
  struct edit_baton *eb;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(anchor_abspath));

  depth_filter_editor = svn_delta_default_editor(result_pool);
  depth_filter_editor->set_target_revision = set_target_revision;
  depth_filter_editor->open_root = open_root;
  depth_filter_editor->delete_entry = delete_entry;
  depth_filter_editor->add_directory = add_directory;
  depth_filter_editor->open_directory = open_directory;
  depth_filter_editor->change_dir_prop = change_dir_prop;
  depth_filter_editor->close_directory = close_directory;
  depth_filter_editor->absent_directory = absent_directory;
  depth_filter_editor->add_file = add_file;
  depth_filter_editor->open_file = open_file;
  depth_filter_editor->apply_textdelta = apply_textdelta;
  depth_filter_editor->change_file_prop = change_file_prop;
  depth_filter_editor->close_file = close_file;
  depth_filter_editor->absent_file = absent_file;
  depth_filter_editor->close_edit = close_edit;

  eb = apr_pcalloc(result_pool, sizeof(*eb));
  eb->wrapped_editor = wrapped_editor;
  eb->wrapped_edit_baton = wrapped_edit_baton;
  eb->db = db;
  eb->anchor_abspath = anchor_abspath;
  eb->target = target;

  *editor = depth_filter_editor;
  *edit_baton = eb;

  return SVN_NO_ERROR;
}
