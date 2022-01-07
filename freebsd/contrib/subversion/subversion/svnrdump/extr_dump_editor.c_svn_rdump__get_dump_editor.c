
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_11__ {struct dump_edit_baton* fetch_baton; int fetch_kind_func; int fetch_props_func; int fetch_base_func; } ;
typedef TYPE_1__ svn_delta_shim_callbacks_t ;
struct TYPE_12__ {int close_edit; int close_file; int open_file; int add_file; int apply_textdelta; int change_file_prop; int change_dir_prop; int close_directory; int open_directory; int add_directory; int delete_entry; int open_root; } ;
typedef TYPE_2__ svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
struct dump_edit_baton {char const* update_anchor_relpath; int delta_abspath; int delta_file; int pool; int * pending_db; int current_revision; int * ra_session; int * stream; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 struct dump_edit_baton* apr_pcalloc (int *,int) ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_directory ;
 int close_edit ;
 int close_file ;
 int delete_entry ;
 int fetch_base_func ;
 int fetch_kind_func ;
 int fetch_props_func ;
 int open_directory ;
 int open_file ;
 int open_root ;
 TYPE_2__* svn_delta_default_editor (int *) ;
 int svn_delta_get_cancellation_editor (int ,void*,TYPE_2__*,struct dump_edit_baton*,TYPE_2__ const**,void**,int *) ;
 TYPE_1__* svn_delta_shim_callbacks_default (int *) ;
 int svn_editor__insert_shims (TYPE_2__ const**,void**,TYPE_2__ const*,void*,int *,int *,TYPE_1__*,int *,int *) ;
 int svn_io_file_del_on_close ;
 int svn_io_open_unique_file3 (int *,int *,int *,int ,int *,int *) ;
 int svn_pool_create (int *) ;

svn_error_t *
svn_rdump__get_dump_editor(const svn_delta_editor_t **editor,
                           void **edit_baton,
                           svn_revnum_t revision,
                           svn_stream_t *stream,
                           svn_ra_session_t *ra_session,
                           const char *update_anchor_relpath,
                           svn_cancel_func_t cancel_func,
                           void *cancel_baton,
                           apr_pool_t *pool)
{
  struct dump_edit_baton *eb;
  svn_delta_editor_t *de;
  svn_delta_shim_callbacks_t *shim_callbacks =
                                        svn_delta_shim_callbacks_default(pool);

  eb = apr_pcalloc(pool, sizeof(struct dump_edit_baton));
  eb->stream = stream;
  eb->ra_session = ra_session;
  eb->update_anchor_relpath = update_anchor_relpath;
  eb->current_revision = revision;
  eb->pending_db = ((void*)0);


  eb->pool = svn_pool_create(pool);




  SVN_ERR(svn_io_open_unique_file3(&(eb->delta_file), &(eb->delta_abspath),
                                   ((void*)0), svn_io_file_del_on_close, pool, pool));

  de = svn_delta_default_editor(pool);
  de->open_root = open_root;
  de->delete_entry = delete_entry;
  de->add_directory = add_directory;
  de->open_directory = open_directory;
  de->close_directory = close_directory;
  de->change_dir_prop = change_dir_prop;
  de->change_file_prop = change_file_prop;
  de->apply_textdelta = apply_textdelta;
  de->add_file = add_file;
  de->open_file = open_file;
  de->close_file = close_file;
  de->close_edit = close_edit;


  *edit_baton = eb;
  *editor = de;


  SVN_ERR(svn_delta_get_cancellation_editor(cancel_func, cancel_baton,
                                            de, eb, editor, edit_baton, pool));

  shim_callbacks->fetch_base_func = fetch_base_func;
  shim_callbacks->fetch_props_func = fetch_props_func;
  shim_callbacks->fetch_kind_func = fetch_kind_func;
  shim_callbacks->fetch_baton = eb;

  SVN_ERR(svn_editor__insert_shims(editor, edit_baton, *editor, *edit_baton,
                                   ((void*)0), ((void*)0), shim_callbacks, pool, pool));

  return SVN_NO_ERROR;
}
