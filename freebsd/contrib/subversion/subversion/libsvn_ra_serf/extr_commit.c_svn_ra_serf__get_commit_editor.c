
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_14__ {int shim_callbacks; int session_url_str; scalar_t__ supports_put_result_checksum; int useragent; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
struct TYPE_15__ {int apply_textdelta_stream; int abort_edit; int close_edit; int close_file; int change_file_prop; int apply_textdelta; int open_file; int add_file; int close_directory; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; } ;
typedef TYPE_3__ svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_16__ {int * pool; int deleted_entries; scalar_t__ keep_locks; int * lock_tokens; void* callback_baton; int callback; int revprop_table; TYPE_2__* session; } ;
typedef TYPE_4__ commit_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_TXN_CLIENT_COMPAT_VERSION ;
 int SVN_PROP_TXN_USER_AGENT ;
 int SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS ;
 int SVN_VER_NUMBER ;
 int abort_edit ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 int apply_textdelta_stream ;
 scalar_t__ apr_hash_count (int *) ;
 int apr_hash_make (int *) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_directory ;
 int close_edit ;
 int close_file ;
 int delete_entry ;
 int open_directory ;
 int open_file ;
 int open_root ;
 TYPE_3__* svn_delta_default_editor (int *) ;
 int svn_editor__insert_shims (TYPE_3__ const**,void**,TYPE_3__ const*,void*,char const*,char const*,int ,int *,int *) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_prop_hash_dup (int *,int *) ;
 int svn_ra_serf__get_repos_root (TYPE_1__*,char const**,int *) ;
 int svn_ra_serf__has_capability (TYPE_1__*,scalar_t__*,int ,int *) ;
 int svn_string_create (int ,int *) ;
 char* svn_uri_skip_ancestor (char const*,int ,int *) ;

svn_error_t *
svn_ra_serf__get_commit_editor(svn_ra_session_t *ra_session,
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

  ctx = apr_pcalloc(pool, sizeof(*ctx));

  ctx->pool = pool;

  ctx->session = session;

  ctx->revprop_table = svn_prop_hash_dup(revprop_table, pool);



  SVN_ERR(svn_ra_serf__has_capability(ra_session, &supports_ephemeral_props,
                                      SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS,
                                      pool));
  if (supports_ephemeral_props)
    {
      svn_hash_sets(ctx->revprop_table,
                    apr_pstrdup(pool, SVN_PROP_TXN_CLIENT_COMPAT_VERSION),
                    svn_string_create(SVN_VER_NUMBER, pool));
      svn_hash_sets(ctx->revprop_table,
                    apr_pstrdup(pool, SVN_PROP_TXN_USER_AGENT),
                    svn_string_create(session->useragent, pool));
    }

  ctx->callback = callback;
  ctx->callback_baton = callback_baton;

  ctx->lock_tokens = (lock_tokens && apr_hash_count(lock_tokens))
                       ? lock_tokens : ((void*)0);
  ctx->keep_locks = keep_locks;

  ctx->deleted_entries = apr_hash_make(ctx->pool);

  editor = svn_delta_default_editor(pool);
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




  if (session->supports_put_result_checksum)
    editor->apply_textdelta_stream = apply_textdelta_stream;

  *ret_editor = editor;
  *edit_baton = ctx;

  SVN_ERR(svn_ra_serf__get_repos_root(ra_session, &repos_root, pool));
  base_relpath = svn_uri_skip_ancestor(repos_root, session->session_url_str,
                                       pool);

  SVN_ERR(svn_editor__insert_shims(ret_editor, edit_baton, *ret_editor,
                                   *edit_baton, repos_root, base_relpath,
                                   session->shim_callbacks, pool, pool));

  return SVN_NO_ERROR;
}
