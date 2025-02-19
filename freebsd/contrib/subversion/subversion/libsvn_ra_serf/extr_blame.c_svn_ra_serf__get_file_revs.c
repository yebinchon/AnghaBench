
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_12__ {int * priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
typedef int svn_ra_serf__session_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_4__* header_delegate_baton; int header_delegate; int custom_accept_encoding; TYPE_4__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_file_rev_handler_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_14__ {char const* path; int * session; int include_merged_revisions; scalar_t__ end; scalar_t__ start; void* file_rev_baton; int file_rev; int * pool; } ;
typedef TYPE_4__ blame_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int blame_cdata ;
 int blame_closed ;
 int blame_opened ;
 int blame_ttable ;
 int create_file_revs_body ;
 int setup_headers ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int *,int *,int *,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,int *,int *,scalar_t__,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int * svn_ra_serf__xml_context_create (int ,int ,int ,int ,TYPE_4__*,int *) ;

svn_error_t *
svn_ra_serf__get_file_revs(svn_ra_session_t *ra_session,
                           const char *path,
                           svn_revnum_t start,
                           svn_revnum_t end,
                           svn_boolean_t include_merged_revisions,
                           svn_file_rev_handler_t rev_handler,
                           void *rev_handler_baton,
                           apr_pool_t *pool)
{
  blame_context_t *blame_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *req_url;
  svn_revnum_t peg_rev;

  blame_ctx = apr_pcalloc(pool, sizeof(*blame_ctx));
  blame_ctx->pool = pool;
  blame_ctx->path = path;
  blame_ctx->file_rev = rev_handler;
  blame_ctx->file_rev_baton = rev_handler_baton;
  blame_ctx->start = start;
  blame_ctx->end = end;
  blame_ctx->include_merged_revisions = include_merged_revisions;
  blame_ctx->session = session;



  if (end > start)
    peg_rev = end;
  else
    peg_rev = start;

  SVN_ERR(svn_ra_serf__get_stable_url(&req_url, ((void*)0) ,
                                      session,
                                      ((void*)0) , peg_rev,
                                      pool, pool));

  xmlctx = svn_ra_serf__xml_context_create(blame_ttable,
                                           blame_opened,
                                           blame_closed,
                                           blame_cdata,
                                           blame_ctx,
                                           pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0), pool);

  handler->method = "REPORT";
  handler->path = req_url;
  handler->body_type = "text/xml";
  handler->body_delegate = create_file_revs_body;
  handler->body_delegate_baton = blame_ctx;
  handler->custom_accept_encoding = TRUE;
  handler->header_delegate = setup_headers;
  handler->header_delegate_baton = blame_ctx;

  SVN_ERR(svn_ra_serf__context_run_one(handler, pool));

  if (handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  return SVN_NO_ERROR;
}
