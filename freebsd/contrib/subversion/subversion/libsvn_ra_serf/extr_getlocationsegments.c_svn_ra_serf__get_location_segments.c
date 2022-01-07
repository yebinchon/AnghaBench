
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef void* svn_revnum_t ;
struct TYPE_20__ {int * priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
typedef int svn_ra_serf__session_t ;
struct TYPE_19__ {int code; } ;
struct TYPE_21__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_5__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_location_segment_receiver_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct TYPE_23__ {char const* path; void* receiver_baton; int receiver; void* end_rev; void* start_rev; void* peg_revision; } ;
typedef TYPE_5__ gls_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 TYPE_5__* apr_pcalloc (int *,int) ;
 int create_gls_body ;
 int gls_closed ;
 int gls_ttable ;
 TYPE_4__* svn_error_create (int ,TYPE_4__*,int *) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 TYPE_4__* svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int *,int *,int *,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,int *,int *,void*,int *,int *) ;
 TYPE_4__* svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_5__*,int *) ;

svn_error_t *
svn_ra_serf__get_location_segments(svn_ra_session_t *ra_session,
                                   const char *path,
                                   svn_revnum_t peg_revision,
                                   svn_revnum_t start_rev,
                                   svn_revnum_t end_rev,
                                   svn_location_segment_receiver_t receiver,
                                   void *receiver_baton,
                                   apr_pool_t *pool)
{
  gls_context_t *gls_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;
  svn_error_t *err;

  gls_ctx = apr_pcalloc(pool, sizeof(*gls_ctx));
  gls_ctx->path = path;
  gls_ctx->peg_revision = peg_revision;
  gls_ctx->start_rev = start_rev;
  gls_ctx->end_rev = end_rev;
  gls_ctx->receiver = receiver;
  gls_ctx->receiver_baton = receiver_baton;

  SVN_ERR(svn_ra_serf__get_stable_url(&req_url, ((void*)0) ,
                                      session, ((void*)0) , peg_revision,
                                      pool, pool));

  xmlctx = svn_ra_serf__xml_context_create(gls_ttable,
                                           ((void*)0), gls_closed, ((void*)0),
                                           gls_ctx,
                                           pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0), pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_delegate = create_gls_body;
  handler->body_delegate_baton = gls_ctx;
  handler->body_type = "text/xml";

  err = svn_ra_serf__context_run_one(handler, pool);

  if (!err && handler->sline.code != 200)
    err = svn_ra_serf__unexpected_status(handler);

  if (err && (err->apr_err == SVN_ERR_UNSUPPORTED_FEATURE))
    return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, err, ((void*)0));

  return svn_error_trace(err);
}
