#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ svn_ra_session_t ;
struct TYPE_14__ {int /*<<< orphan*/  shim_callbacks; int /*<<< orphan*/  session_url_str; scalar_t__ supports_put_result_checksum; int /*<<< orphan*/  useragent; } ;
typedef  TYPE_2__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  apply_textdelta_stream; int /*<<< orphan*/  abort_edit; int /*<<< orphan*/  close_edit; int /*<<< orphan*/  close_file; int /*<<< orphan*/  change_file_prop; int /*<<< orphan*/  apply_textdelta; int /*<<< orphan*/  open_file; int /*<<< orphan*/  add_file; int /*<<< orphan*/  close_directory; int /*<<< orphan*/  change_dir_prop; int /*<<< orphan*/  open_directory; int /*<<< orphan*/  add_directory; int /*<<< orphan*/  delete_entry; int /*<<< orphan*/  open_root; } ;
typedef  TYPE_3__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_commit_callback2_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_16__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  deleted_entries; scalar_t__ keep_locks; int /*<<< orphan*/ * lock_tokens; void* callback_baton; int /*<<< orphan*/  callback; int /*<<< orphan*/  revprop_table; TYPE_2__* session; } ;
typedef  TYPE_4__ commit_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_TXN_CLIENT_COMPAT_VERSION ; 
 int /*<<< orphan*/  SVN_PROP_TXN_USER_AGENT ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS ; 
 int /*<<< orphan*/  SVN_VER_NUMBER ; 
 int /*<<< orphan*/  abort_edit ; 
 int /*<<< orphan*/  add_directory ; 
 int /*<<< orphan*/  add_file ; 
 int /*<<< orphan*/  apply_textdelta ; 
 int /*<<< orphan*/  apply_textdelta_stream ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  change_dir_prop ; 
 int /*<<< orphan*/  change_file_prop ; 
 int /*<<< orphan*/  close_directory ; 
 int /*<<< orphan*/  close_edit ; 
 int /*<<< orphan*/  close_file ; 
 int /*<<< orphan*/  delete_entry ; 
 int /*<<< orphan*/  open_directory ; 
 int /*<<< orphan*/  open_file ; 
 int /*<<< orphan*/  open_root ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const**,void**,TYPE_3__ const*,void*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_ra_session_t *ra_session,
                               const svn_delta_editor_t **ret_editor,
                               void **edit_baton,
                               apr_hash_t *revprop_table,
                               svn_commit_callback2_t callback,
                               void *callback_baton,
                               apr_hash_t *lock_tokens,
                               svn_boolean_t keep_locks,
                               apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_delta_editor_t *editor;
  commit_context_t *ctx;
  const char *repos_root;
  const char *base_relpath;
  svn_boolean_t supports_ephemeral_props;

  ctx = FUNC3(pool, sizeof(*ctx));

  ctx->pool = pool;

  ctx->session = session;

  ctx->revprop_table = FUNC8(revprop_table, pool);

  /* If the server supports ephemeral properties, add some carrying
     interesting version information. */
  FUNC0(FUNC10(ra_session, &supports_ephemeral_props,
                                      SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS,
                                      pool));
  if (supports_ephemeral_props)
    {
      FUNC7(ctx->revprop_table,
                    FUNC4(pool, SVN_PROP_TXN_CLIENT_COMPAT_VERSION),
                    FUNC11(SVN_VER_NUMBER, pool));
      FUNC7(ctx->revprop_table,
                    FUNC4(pool, SVN_PROP_TXN_USER_AGENT),
                    FUNC11(session->useragent, pool));
    }

  ctx->callback = callback;
  ctx->callback_baton = callback_baton;

  ctx->lock_tokens = (lock_tokens && FUNC1(lock_tokens))
                       ? lock_tokens : NULL;
  ctx->keep_locks = keep_locks;

  ctx->deleted_entries = FUNC2(ctx->pool);

  editor = FUNC5(pool);
  editor->open_root = open_root;
  editor->delete_entry = delete_entry;
  editor->add_directory = add_directory;
  editor->open_directory = open_directory;
  editor->change_dir_prop = change_dir_prop;
  editor->close_directory = close_directory;
  editor->add_file = add_file;
  editor->open_file = open_file;
  editor->apply_textdelta = apply_textdelta;
  editor->change_file_prop = change_file_prop;
  editor->close_file = close_file;
  editor->close_edit = close_edit;
  editor->abort_edit = abort_edit;
  /* Only install the callback that allows streaming PUT request bodies
   * if the server has the necessary capability.  Otherwise, this will
   * fallback to the default implementation using the temporary files.
   * See default_editor.c:apply_textdelta_stream(). */
  if (session->supports_put_result_checksum)
    editor->apply_textdelta_stream = apply_textdelta_stream;

  *ret_editor = editor;
  *edit_baton = ctx;

  FUNC0(FUNC9(ra_session, &repos_root, pool));
  base_relpath = FUNC12(repos_root, session->session_url_str,
                                       pool);

  FUNC0(FUNC6(ret_editor, edit_baton, *ret_editor,
                                   *edit_baton, repos_root, base_relpath,
                                   session->shim_callbacks, pool, pool));

  return SVN_NO_ERROR;
}