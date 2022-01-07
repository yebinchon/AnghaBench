
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_4__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
struct TYPE_17__ {int path; } ;
struct TYPE_20__ {TYPE_1__ session_url; } ;
typedef TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_18__ {int code; } ;
struct TYPE_21__ {char* method; char const* path; char* body_type; TYPE_2__ sline; TYPE_7__* response_baton; int response_handler; int no_dav_headers; TYPE_7__* header_delegate_baton; int header_delegate; TYPE_7__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_5__ svn_ra_serf__handler_t ;
struct TYPE_22__ {scalar_t__ token; int path; } ;
typedef TYPE_6__ svn_lock_t ;
typedef int svn_error_t ;
struct TYPE_23__ {char const* path; TYPE_6__* lock; TYPE_5__* handler; struct TYPE_23__* inner_baton; int inner_handler; int * pool; } ;
typedef TYPE_7__ lock_info_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_7__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int create_getlock_body ;
 int handle_lock ;
 int locks_closed ;
 int locks_expected_status ;
 int locks_ttable ;
 int setup_getlock_headers ;
 int svn_error_clear (int *) ;
 int svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_error_find_cause (int *,int ) ;
 int * svn_error_trace (int ) ;
 TYPE_6__* svn_lock_create (int *) ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_serf__context_run_one (TYPE_5__*,int *) ;
 TYPE_5__* svn_ra_serf__create_expat_handler (TYPE_4__*,int *,int ,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_5__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_7__*,int *) ;

svn_error_t *
svn_ra_serf__get_lock(svn_ra_session_t *ra_session,
                      svn_lock_t **lock,
                      const char *path,
                      apr_pool_t *result_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  apr_pool_t *scratch_pool = svn_pool_create(result_pool);
  lock_info_t *lock_ctx;
  const char *req_url;
  svn_error_t *err;

  req_url = svn_path_url_add_component2(session->session_url.path, path,
                                        scratch_pool);

  lock_ctx = apr_pcalloc(scratch_pool, sizeof(*lock_ctx));
  lock_ctx->pool = result_pool;
  lock_ctx->path = req_url;
  lock_ctx->lock = svn_lock_create(result_pool);
  lock_ctx->lock->path = apr_pstrdup(result_pool, path);

  xmlctx = svn_ra_serf__xml_context_create(locks_ttable,
                                           ((void*)0), locks_closed, ((void*)0),
                                           lock_ctx,
                                           scratch_pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx,
                                              locks_expected_status,
                                              scratch_pool);

  handler->method = "PROPFIND";
  handler->path = req_url;
  handler->body_type = "text/xml";

  handler->body_delegate = create_getlock_body;
  handler->body_delegate_baton = lock_ctx;

  handler->header_delegate = setup_getlock_headers;
  handler->header_delegate_baton = lock_ctx;

  handler->no_dav_headers = TRUE;

  lock_ctx->inner_handler = handler->response_handler;
  lock_ctx->inner_baton = handler->response_baton;
  handler->response_handler = handle_lock;
  handler->response_baton = lock_ctx;

  lock_ctx->handler = handler;

  err = svn_ra_serf__context_run_one(handler, scratch_pool);

  if ((err && (handler->sline.code == 500 || handler->sline.code == 501))
      || svn_error_find_cause(err, SVN_ERR_UNSUPPORTED_FEATURE))
    return svn_error_trace(
             svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, err,
                              _("Server does not support locking features")));
  else if (svn_error_find_cause(err, SVN_ERR_FS_NOT_FOUND))
    svn_error_clear(err);
  else if (handler->sline.code != 207)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  if (lock_ctx->lock && lock_ctx->lock->token)
    *lock = lock_ctx->lock;
  else
    *lock = ((void*)0);

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
