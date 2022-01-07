
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int code; } ;
struct TYPE_8__ {char* method; char* path; TYPE_1__ sline; struct TYPE_8__* response_baton; int response_handler; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int svn_commit_info_t ;
struct TYPE_9__ {char* activity_url; char* txn_url; scalar_t__ open_batons; int session; int callback_baton; int * (* callback ) (int const*,int ,int *) ;int keep_locks; int lock_tokens; } ;
typedef TYPE_3__ commit_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * stub1 (int const*,int ,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_2__*,int *) ;
 TYPE_2__* svn_ra_serf__create_handler (int ,int *) ;
 int svn_ra_serf__expect_empty_body ;
 int * svn_ra_serf__run_merge (int const**,int ,char const*,int ,int ,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  commit_context_t *ctx = edit_baton;
  const char *merge_target =
    ctx->activity_url ? ctx->activity_url : ctx->txn_url;
  const svn_commit_info_t *commit_info;
  svn_error_t *err = ((void*)0);

  if (ctx->open_batons > 0)
    return svn_error_create(
              SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION, ((void*)0),
              _("Closing editor with directories or files open"));


  SVN_ERR(svn_ra_serf__run_merge(&commit_info,
                                 ctx->session,
                                 merge_target,
                                 ctx->lock_tokens,
                                 ctx->keep_locks,
                                 pool, pool));

  ctx->txn_url = ((void*)0);


  if (ctx->callback)
    err = ctx->callback(commit_info, ctx->callback_baton, pool);


  if (ctx->activity_url)
    {
      svn_ra_serf__handler_t *handler;

      handler = svn_ra_serf__create_handler(ctx->session, pool);

      handler->method = "DELETE";
      handler->path = ctx->activity_url;

      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;

      ctx->activity_url = ((void*)0);

      SVN_ERR(svn_error_compose_create(
                  err,
                  svn_ra_serf__context_run_one(handler, pool)));

      if (handler->sline.code != 204)
        return svn_error_trace(svn_ra_serf__unexpected_status(handler));
    }

  SVN_ERR(err);

  return SVN_NO_ERROR;
}
