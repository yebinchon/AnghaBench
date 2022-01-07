
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int code; } ;
struct TYPE_11__ {char* body_type; char* method; char const* path; int * location; TYPE_1__ sline; struct TYPE_11__* response_baton; int response_handler; void* body_delegate_baton; int body_delegate; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_12__ {scalar_t__ activity_url; int session; } ;
typedef TYPE_3__ commit_context_t ;
struct TYPE_13__ {int path; } ;
typedef TYPE_4__ apr_uri_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_uri_parse (int *,int *,TYPE_4__*) ;
 int create_checkout_body ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_2__*,int *) ;
 TYPE_2__* svn_ra_serf__create_handler (int ,int *) ;
 int svn_ra_serf__expect_empty_body ;
 int svn_ra_serf__unexpected_status (TYPE_2__*) ;
 char* svn_urlpath__canonicalize (int ,int *) ;

__attribute__((used)) static svn_error_t *
checkout_node(const char **working_url,
              const commit_context_t *commit_ctx,
              const char *node_url,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler;
  apr_status_t status;
  apr_uri_t uri;



  handler = svn_ra_serf__create_handler(commit_ctx->session, scratch_pool);

  handler->body_delegate = create_checkout_body;
  handler->body_delegate_baton = ( void *)commit_ctx->activity_url;
  handler->body_type = "text/xml";

  handler->response_handler = svn_ra_serf__expect_empty_body;
  handler->response_baton = handler;

  handler->method = "CHECKOUT";
  handler->path = node_url;

  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

  if (handler->sline.code != 201)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  if (handler->location == ((void*)0))
    return svn_error_create(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                            _("No Location header received"));






  status = apr_uri_parse(scratch_pool, handler->location, &uri);
  if (status)
    return svn_error_create(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                            _("Error parsing Location header value"));

  *working_url = svn_urlpath__canonicalize(uri.path, result_pool);

  return SVN_NO_ERROR;
}
