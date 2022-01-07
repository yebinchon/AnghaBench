
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int svn_wc_notify_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_16__ {int * (* abort_edit ) (void*,int *) ;int * (* close_edit ) (void*,int *) ;int * (* open_root ) (void*,int ,int *,void**) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_client_commit_item3_t ;
struct TYPE_17__ {int pool; TYPE_4__* ctx; int base_revision; TYPE_10__* root_op; int ra_session; } ;
typedef TYPE_2__ svn_client__mtcc_t ;
typedef int item ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_18__ {int notify_baton2; int (* notify_func2 ) (int ,int *,int *) ;} ;
struct TYPE_15__ {scalar_t__ kind; } ;


 int FALSE ;
 scalar_t__ MTCC_UNMODIFIED (TYPE_2__*) ;
 scalar_t__ OP_OPEN_DIR ;
 scalar_t__ SVN_CLIENT__HAS_LOG_MSG_FUNC (TYPE_4__*) ;
 int SVN_ERR (int *) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * add_commit_items (TYPE_10__*,char const*,char const*,int *,int *,int *) ;
 int * apr_array_make (int *,int,int) ;
 int * commit_directory (TYPE_1__ const*,TYPE_10__*,char*,int ,void*,char const*,TYPE_4__*,int *) ;
 int * mtcc_reparent (char const*,TYPE_2__*,int *) ;
 int * stub1 (void*,int ,int *,void**) ;
 int stub2 (int ,int *,int *) ;
 int * stub3 (void*,int *) ;
 int * stub4 (void*,int *) ;
 int * svn_client__ensure_revprop_table (int **,int *,char const*,TYPE_4__*,int *) ;
 int * svn_client__get_log_msg (char const**,char const**,int *,TYPE_4__*,int *) ;
 int * svn_client_open_ra_session2 (int *,char const*,int *,TYPE_4__*,int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_destroy (int ) ;
 int * svn_ra_check_path (int ,char*,int ,scalar_t__*,int *) ;
 int * svn_ra_get_commit_editor3 (int ,TYPE_1__ const**,void**,int *,int ,void*,int *,int ,int ) ;
 int * svn_ra_get_session_url (int ,char const**,int *) ;
 int * svn_ra_reparent (int ,char const*,int *) ;
 int svn_uri_split (char const**,char const**,char const*,int *) ;
 int * svn_wc_create_notify_url (char const*,int ,int *) ;
 int svn_wc_notify_commit_finalizing ;

svn_error_t *
svn_client__mtcc_commit(apr_hash_t *revprop_table,
                        svn_commit_callback2_t commit_callback,
                        void *commit_baton,
                        svn_client__mtcc_t *mtcc,
                        apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *editor;
  void *edit_baton;
  void *root_baton;
  apr_hash_t *commit_revprops;
  svn_node_kind_t kind;
  svn_error_t *err;
  const char *session_url;
  const char *log_msg;

  if (MTCC_UNMODIFIED(mtcc))
    {

      svn_pool_destroy(mtcc->pool);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_ra_get_session_url(mtcc->ra_session, &session_url, scratch_pool));

  if (mtcc->root_op->kind != OP_OPEN_DIR)
    {
      const char *name;

      svn_uri_split(&session_url, &name, session_url, scratch_pool);

      if (*name)
        {
          SVN_ERR(mtcc_reparent(session_url, mtcc, scratch_pool));

          SVN_ERR(svn_ra_reparent(mtcc->ra_session, session_url, scratch_pool));
        }
    }


  if (SVN_CLIENT__HAS_LOG_MSG_FUNC(mtcc->ctx))
    {
      svn_client_commit_item3_t *item;
      const char *tmp_file;
      apr_array_header_t *commit_items
                = apr_array_make(scratch_pool, 32, sizeof(item));

      SVN_ERR(add_commit_items(mtcc->root_op, session_url, session_url,
                               commit_items, scratch_pool, scratch_pool));

      SVN_ERR(svn_client__get_log_msg(&log_msg, &tmp_file, commit_items,
                                      mtcc->ctx, scratch_pool));

      if (! log_msg)
        return SVN_NO_ERROR;
    }
  else
    log_msg = "";

  SVN_ERR(svn_client__ensure_revprop_table(&commit_revprops, revprop_table,
                                           log_msg, mtcc->ctx, scratch_pool));




  err = svn_ra_check_path(mtcc->ra_session, "", mtcc->base_revision, &kind,
                          scratch_pool);

  if (err)
    {
      svn_error_t *err2 = svn_client_open_ra_session2(&mtcc->ra_session,
                                                      session_url,
                                                      ((void*)0), mtcc->ctx,
                                                      mtcc->pool,
                                                      scratch_pool);

      if (err2)
        {
          svn_pool_destroy(mtcc->pool);
          return svn_error_trace(svn_error_compose_create(err, err2));
        }
      svn_error_clear(err);

      SVN_ERR(svn_ra_check_path(mtcc->ra_session, "",
                                mtcc->base_revision, &kind, scratch_pool));
    }

  if (kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                             _("Can't commit to '%s' because it "
                               "is not a directory"),
                             session_url);




  SVN_ERR(svn_ra_get_commit_editor3(mtcc->ra_session, &editor, &edit_baton,
                                    commit_revprops,
                                    commit_callback, commit_baton,
                                    ((void*)0) ,
                                    FALSE ,
                                    mtcc->pool));

  err = editor->open_root(edit_baton, mtcc->base_revision, scratch_pool, &root_baton);

  if (!err)
    err = commit_directory(editor, mtcc->root_op, "", mtcc->base_revision,
                           root_baton, session_url, mtcc->ctx, scratch_pool);

  if (!err)
    {
      if (mtcc->ctx->notify_func2)
        {
          svn_wc_notify_t *notify;
          notify = svn_wc_create_notify_url(session_url,
                                            svn_wc_notify_commit_finalizing,
                                            scratch_pool);
          mtcc->ctx->notify_func2(mtcc->ctx->notify_baton2, notify,
                                  scratch_pool);
        }
      SVN_ERR(editor->close_edit(edit_baton, scratch_pool));
    }
  else
    err = svn_error_compose_create(err,
                                   editor->abort_edit(edit_baton, scratch_pool));

  svn_pool_destroy(mtcc->pool);

  return svn_error_trace(err);
}
