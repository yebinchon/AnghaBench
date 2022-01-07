
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int abort_edit; int close_edit; int absent_file; int close_file; int change_file_prop; int apply_textdelta; int open_file; int add_file; int absent_directory; int close_directory; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; int set_target_revision; } ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int svn_boolean_t ;
struct TYPE_8__ {char const* to_url; char const* source_prop_encoding; int* normalized_node_props_counter; void* strip_mergeinfo; void* migrate_svnmerge; int quiet; int base_revision; void* wrapped_edit_baton; TYPE_1__ const* wrapped_editor; } ;
typedef TYPE_2__ edit_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 void* TRUE ;
 int abort_edit ;
 int absent_directory ;
 int absent_file ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_directory ;
 int close_edit ;
 int close_file ;
 int delete_entry ;
 scalar_t__ getenv (char*) ;
 int open_directory ;
 int open_file ;
 int open_root ;
 int set_target_revision ;
 TYPE_1__* svn_delta_default_editor (int *) ;

svn_error_t *
svnsync_get_sync_editor(const svn_delta_editor_t *wrapped_editor,
                        void *wrapped_edit_baton,
                        svn_revnum_t base_revision,
                        const char *to_url,
                        const char *source_prop_encoding,
                        svn_boolean_t quiet,
                        const svn_delta_editor_t **editor,
                        void **edit_baton,
                        int *normalized_node_props_counter,
                        apr_pool_t *pool)
{
  svn_delta_editor_t *tree_editor = svn_delta_default_editor(pool);
  edit_baton_t *eb = apr_pcalloc(pool, sizeof(*eb));

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
  eb->base_revision = base_revision;
  eb->to_url = to_url;
  eb->source_prop_encoding = source_prop_encoding;
  eb->quiet = quiet;
  eb->normalized_node_props_counter = normalized_node_props_counter;

  if (getenv("SVNSYNC_UNSUPPORTED_STRIP_MERGEINFO"))
    {
      eb->strip_mergeinfo = TRUE;
    }
  if (getenv("SVNSYNC_UNSUPPORTED_MIGRATE_SVNMERGE"))
    {
      eb->migrate_svnmerge = TRUE;
      eb->strip_mergeinfo = TRUE;
    }

  *editor = tree_editor;
  *edit_baton = eb;

  return SVN_NO_ERROR;
}
