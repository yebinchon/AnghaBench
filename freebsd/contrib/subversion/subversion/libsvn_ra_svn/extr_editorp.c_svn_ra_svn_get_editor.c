
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_ra_svn_edit_callback ;
struct TYPE_10__ {int shim_callbacks; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
struct TYPE_11__ {int abort_edit; int close_edit; int absent_file; int close_file; int change_file_prop; int apply_textdelta; int open_file; int add_file; int absent_directory; int close_directory; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; int set_target_revision; } ;
typedef TYPE_2__ svn_delta_editor_t ;
struct TYPE_12__ {int got_status; scalar_t__ next_token; void* callback_baton; int callback; TYPE_1__* conn; } ;
typedef TYPE_3__ ra_svn_edit_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_3__* apr_palloc (int *,int) ;
 int ra_svn_abort_edit ;
 int ra_svn_absent_dir ;
 int ra_svn_absent_file ;
 int ra_svn_add_dir ;
 int ra_svn_add_file ;
 int ra_svn_apply_textdelta ;
 int ra_svn_change_dir_prop ;
 int ra_svn_change_file_prop ;
 int ra_svn_close_dir ;
 int ra_svn_close_edit ;
 int ra_svn_close_file ;
 int ra_svn_delete_entry ;
 int ra_svn_open_dir ;
 int ra_svn_open_file ;
 int ra_svn_open_root ;
 int ra_svn_target_rev ;
 TYPE_2__* svn_delta_default_editor (int *) ;
 int svn_editor__insert_shims (TYPE_2__ const**,void**,TYPE_2__ const*,void*,int *,int *,int ,int *,int *) ;
 int svn_error_clear (int ) ;

void svn_ra_svn_get_editor(const svn_delta_editor_t **editor,
                           void **edit_baton, svn_ra_svn_conn_t *conn,
                           apr_pool_t *pool,
                           svn_ra_svn_edit_callback callback,
                           void *callback_baton)
{
  svn_delta_editor_t *ra_svn_editor = svn_delta_default_editor(pool);
  ra_svn_edit_baton_t *eb;

  eb = apr_palloc(pool, sizeof(*eb));
  eb->conn = conn;
  eb->callback = callback;
  eb->callback_baton = callback_baton;
  eb->next_token = 0;
  eb->got_status = FALSE;

  ra_svn_editor->set_target_revision = ra_svn_target_rev;
  ra_svn_editor->open_root = ra_svn_open_root;
  ra_svn_editor->delete_entry = ra_svn_delete_entry;
  ra_svn_editor->add_directory = ra_svn_add_dir;
  ra_svn_editor->open_directory = ra_svn_open_dir;
  ra_svn_editor->change_dir_prop = ra_svn_change_dir_prop;
  ra_svn_editor->close_directory = ra_svn_close_dir;
  ra_svn_editor->absent_directory = ra_svn_absent_dir;
  ra_svn_editor->add_file = ra_svn_add_file;
  ra_svn_editor->open_file = ra_svn_open_file;
  ra_svn_editor->apply_textdelta = ra_svn_apply_textdelta;
  ra_svn_editor->change_file_prop = ra_svn_change_file_prop;
  ra_svn_editor->close_file = ra_svn_close_file;
  ra_svn_editor->absent_file = ra_svn_absent_file;
  ra_svn_editor->close_edit = ra_svn_close_edit;
  ra_svn_editor->abort_edit = ra_svn_abort_edit;

  *editor = ra_svn_editor;
  *edit_baton = eb;

  svn_error_clear(svn_editor__insert_shims(editor, edit_baton, *editor,
                                           *edit_baton, ((void*)0), ((void*)0),
                                           conn->shim_callbacks,
                                           pool, pool));
}
