
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_ra_serf__xml_context_t ;
struct TYPE_11__ {int path; } ;
struct TYPE_12__ {TYPE_1__ session_url; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
struct TYPE_13__ {char* method; char* body_type; TYPE_4__* response_baton; int response_handler; int body_delegate; int path; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_14__ {struct TYPE_14__* inner_baton; int inner_handler; TYPE_3__* handler; int youngest_rev; TYPE_2__* session; int * pool; } ;
typedef TYPE_4__ options_context_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int create_options_body ;
 int options_closed ;
 int options_response_handler ;
 int options_ttable ;
 TYPE_3__* svn_ra_serf__create_expat_handler (TYPE_2__*,int *,int *,int *) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_4__*,int *) ;

__attribute__((used)) static svn_error_t *
create_options_req(options_context_t **opt_ctx,
                   svn_ra_serf__session_t *session,
                   apr_pool_t *pool)
{
  options_context_t *new_ctx;
  svn_ra_serf__xml_context_t *xmlctx;
  svn_ra_serf__handler_t *handler;

  new_ctx = apr_pcalloc(pool, sizeof(*new_ctx));
  new_ctx->pool = pool;
  new_ctx->session = session;

  new_ctx->youngest_rev = SVN_INVALID_REVNUM;

  xmlctx = svn_ra_serf__xml_context_create(options_ttable,
                                           ((void*)0), options_closed, ((void*)0),
                                           new_ctx,
                                           pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0), pool);

  handler->method = "OPTIONS";
  handler->path = session->session_url.path;
  handler->body_delegate = create_options_body;
  handler->body_type = "text/xml";

  new_ctx->handler = handler;

  new_ctx->inner_handler = handler->response_handler;
  new_ctx->inner_baton = handler->response_baton;
  handler->response_handler = options_response_handler;
  handler->response_baton = new_ctx;

  *opt_ctx = new_ctx;

  return SVN_NO_ERROR;
}
