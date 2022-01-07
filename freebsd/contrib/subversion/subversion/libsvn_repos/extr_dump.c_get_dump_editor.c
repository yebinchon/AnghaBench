
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef void* svn_revnum_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_9__ {struct edit_baton* fetch_baton; int fetch_base_func; int fetch_props_func; int fetch_kind_func; } ;
typedef TYPE_1__ svn_delta_shim_callbacks_t ;
struct TYPE_10__ {int open_file; int add_file; int change_dir_prop; int * (* close_directory ) (void*,int *) ;int open_directory; int add_directory; int delete_entry; int open_root; } ;
typedef TYPE_2__ svn_delta_editor_t ;
typedef void* svn_boolean_t ;
struct edit_baton {void** found_old_reference; void** found_old_mergeinfo; int * path_tracker; void* check_normalization; void* verify; void* use_deltas; void* current_rev; int * fs; int fs_root; int path; void* oldest_dumped_rev; void* notify_baton; int notify_func; int * stream; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_directory ;
 int add_file ;
 struct edit_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int change_dir_prop ;
 int * close_directory (void*,int *) ;
 int delete_entry ;
 int fetch_base_func ;
 int fetch_kind_func ;
 int fetch_props_func ;
 int open_directory ;
 int open_file ;
 int open_root ;
 TYPE_2__* svn_delta_default_editor (int *) ;
 TYPE_1__* svn_delta_shim_callbacks_default (int *) ;
 int svn_editor__insert_shims (TYPE_2__ const**,void**,TYPE_2__ const*,void*,int *,int *,TYPE_1__*,int *,int *) ;
 int svn_fs_revision_root (int *,int *,void*,int *) ;
 int * tracker_create (void*,int *) ;

__attribute__((used)) static svn_error_t *
get_dump_editor(const svn_delta_editor_t **editor,
                void **edit_baton,
                svn_fs_t *fs,
                svn_revnum_t to_rev,
                const char *root_path,
                svn_stream_t *stream,
                svn_boolean_t *found_old_reference,
                svn_boolean_t *found_old_mergeinfo,
                svn_error_t *(*custom_close_directory)(void *dir_baton,
                                  apr_pool_t *scratch_pool),
                svn_repos_notify_func_t notify_func,
                void *notify_baton,
                svn_revnum_t oldest_dumped_rev,
                svn_boolean_t use_deltas,
                svn_boolean_t verify,
                svn_boolean_t check_normalization,
                apr_pool_t *pool)
{



  struct edit_baton *eb = apr_pcalloc(pool, sizeof(*eb));
  svn_delta_editor_t *dump_editor = svn_delta_default_editor(pool);
  svn_delta_shim_callbacks_t *shim_callbacks =
                                svn_delta_shim_callbacks_default(pool);


  eb->stream = stream;
  eb->notify_func = notify_func;
  eb->notify_baton = notify_baton;
  eb->oldest_dumped_rev = oldest_dumped_rev;
  eb->path = apr_pstrdup(pool, root_path);
  SVN_ERR(svn_fs_revision_root(&(eb->fs_root), fs, to_rev, pool));
  eb->fs = fs;
  eb->current_rev = to_rev;
  eb->use_deltas = use_deltas;
  eb->verify = verify;
  eb->check_normalization = check_normalization;
  eb->found_old_reference = found_old_reference;
  eb->found_old_mergeinfo = found_old_mergeinfo;







  eb->path_tracker = verify ? tracker_create(to_rev, pool) : ((void*)0);


  dump_editor->open_root = open_root;
  dump_editor->delete_entry = delete_entry;
  dump_editor->add_directory = add_directory;
  dump_editor->open_directory = open_directory;
  if (custom_close_directory)
    dump_editor->close_directory = custom_close_directory;
  else
    dump_editor->close_directory = close_directory;
  dump_editor->change_dir_prop = change_dir_prop;
  dump_editor->add_file = add_file;
  dump_editor->open_file = open_file;

  *edit_baton = eb;
  *editor = dump_editor;

  shim_callbacks->fetch_kind_func = fetch_kind_func;
  shim_callbacks->fetch_props_func = fetch_props_func;
  shim_callbacks->fetch_base_func = fetch_base_func;
  shim_callbacks->fetch_baton = eb;

  SVN_ERR(svn_editor__insert_shims(editor, edit_baton, *editor, *edit_baton,
                                   ((void*)0), ((void*)0), shim_callbacks, pool, pool));

  return SVN_NO_ERROR;
}
