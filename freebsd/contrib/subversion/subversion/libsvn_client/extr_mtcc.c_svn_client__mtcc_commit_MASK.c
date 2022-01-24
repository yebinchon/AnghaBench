#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {int /*<<< orphan*/ * (* abort_edit ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* close_edit ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* open_root ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;
typedef  TYPE_1__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_commit_callback2_t ;
typedef  int /*<<< orphan*/  svn_client_commit_item3_t ;
struct TYPE_17__ {int /*<<< orphan*/  pool; TYPE_4__* ctx; int /*<<< orphan*/  base_revision; TYPE_10__* root_op; int /*<<< orphan*/  ra_session; } ;
typedef  TYPE_2__ svn_client__mtcc_t ;
typedef  int /*<<< orphan*/  item ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_18__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {scalar_t__ kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ OP_OPEN_DIR ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_10__*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__ const*,TYPE_10__*,char*,int /*<<< orphan*/ ,void*,char const*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const**,char const**,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,TYPE_1__ const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_commit_finalizing ; 

svn_error_t *
FUNC26(apr_hash_t *revprop_table,
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

  if (FUNC0(mtcc))
    {
      /* No changes -> no revision. Easy out */
      FUNC19(mtcc->pool);
      return SVN_NO_ERROR;
    }

  FUNC2(FUNC22(mtcc->ra_session, &session_url, scratch_pool));

  if (mtcc->root_op->kind != OP_OPEN_DIR)
    {
      const char *name;

      FUNC24(&session_url, &name, session_url, scratch_pool);

      if (*name)
        {
          FUNC2(FUNC7(session_url, mtcc, scratch_pool));

          FUNC2(FUNC23(mtcc->ra_session, session_url, scratch_pool));
        }
    }

    /* Create new commit items and add them to the array. */
  if (FUNC1(mtcc->ctx))
    {
      svn_client_commit_item3_t *item;
      const char *tmp_file;
      apr_array_header_t *commit_items
                = FUNC5(scratch_pool, 32, sizeof(item));

      FUNC2(FUNC4(mtcc->root_op, session_url, session_url,
                               commit_items, scratch_pool, scratch_pool));

      FUNC2(FUNC13(&log_msg, &tmp_file, commit_items,
                                      mtcc->ctx, scratch_pool));

      if (! log_msg)
        return SVN_NO_ERROR;
    }
  else
    log_msg = "";

  FUNC2(FUNC12(&commit_revprops, revprop_table,
                                           log_msg, mtcc->ctx, scratch_pool));

  /* Ugly corner case: The ra session might have died while we were waiting
     for the callback */

  err = FUNC20(mtcc->ra_session, "", mtcc->base_revision, &kind,
                          scratch_pool);

  if (err)
    {
      svn_error_t *err2 = FUNC14(&mtcc->ra_session,
                                                      session_url,
                                                      NULL, mtcc->ctx,
                                                      mtcc->pool,
                                                      scratch_pool);

      if (err2)
        {
          FUNC19(mtcc->pool);
          return FUNC18(FUNC16(err, err2));
        }
      FUNC15(err);

      FUNC2(FUNC20(mtcc->ra_session, "",
                                mtcc->base_revision, &kind, scratch_pool));
    }

  if (kind != svn_node_dir)
    return FUNC17(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                             FUNC3("Can't commit to '%s' because it "
                               "is not a directory"),
                             session_url);

  /* Beware that the editor object must not live longer than the MTCC.
     Otherwise, txn objects etc. in EDITOR may live longer than their
     respective FS objects.  So, we can't use SCRATCH_POOL here. */
  FUNC2(FUNC21(mtcc->ra_session, &editor, &edit_baton,
                                    commit_revprops,
                                    commit_callback, commit_baton,
                                    NULL /* lock_tokens */,
                                    FALSE /* keep_locks */,
                                    mtcc->pool));

  err = editor->open_root(edit_baton, mtcc->base_revision, scratch_pool, &root_baton);

  if (!err)
    err = FUNC6(editor, mtcc->root_op, "", mtcc->base_revision,
                           root_baton, session_url, mtcc->ctx, scratch_pool);

  if (!err)
    {
      if (mtcc->ctx->notify_func2)
        {
          svn_wc_notify_t *notify;
          notify = FUNC25(session_url,
                                            svn_wc_notify_commit_finalizing,
                                            scratch_pool);
          mtcc->ctx->notify_func2(mtcc->ctx->notify_baton2, notify,
                                  scratch_pool);
        }
      FUNC2(editor->close_edit(edit_baton, scratch_pool));
    }
  else
    err = FUNC16(err,
                                   editor->abort_edit(edit_baton, scratch_pool));

  FUNC19(mtcc->pool);

  return FUNC18(err);
}