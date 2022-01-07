
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int svn_ra_serf__server_error_t ;
struct TYPE_23__ {scalar_t__ version; int code; int reason; } ;
struct TYPE_21__ {int response_baton; TYPE_4__* (* response_handler ) (int *,int *,int ,int *) ;int * server_error; void* discard_body; void* reading_body; TYPE_5__ sline; int handler_pool; TYPE_2__* conn; TYPE_1__* session; int location; int method; int path; int response_error_baton; int (* response_error ) (int *,int *,int ,int ) ;void* scheduled; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef TYPE_5__ serf_status_line ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_20__ {int last_status_code; } ;
struct TYPE_19__ {int * auth_state; scalar_t__ auth_attempts; int pool; int session_url_str; void* http20; void* http10; } ;


 scalar_t__ APR_STATUS_IS_ECONNABORTED (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_ECONNRESET (scalar_t__) ;
 int APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 void* FALSE ;
 int SERF_BUCKET_READ_ERROR (scalar_t__) ;
 scalar_t__ SERF_HTTP_10 ;
 scalar_t__ SERF_HTTP_VERSION (int,int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int SVN_ERR_RA_DAV_REQUEST_FAILED ;
 TYPE_4__* SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int apr_pstrdup (int ,int ) ;
 scalar_t__ drain_bucket (int *) ;
 int response_get_location (int *,int ,int ,int *) ;
 char* serf_bucket_headers_get (int *,char*) ;
 int * serf_bucket_response_get_headers (int *) ;
 scalar_t__ serf_bucket_response_status (int *,TYPE_5__*) ;
 scalar_t__ serf_bucket_response_wait_for_headers (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int stub1 (int *,int *,int ,int ) ;
 TYPE_4__* stub2 (int *,int *,int ,int *) ;
 int svn_auth_save_credentials (int *,int ) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_createf (int ,int ,int ,int,...) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 TYPE_4__* svn_ra_serf__handle_server_error (int *,TYPE_3__*,int *,int *,scalar_t__*,int *) ;
 int svn_ra_serf__request_create (TYPE_3__*) ;
 int svn_ra_serf__setup_error_parsing (int **,TYPE_3__*,void*,int ,int ) ;
 int svn_ra_serf__wrap_err (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
handle_response(serf_request_t *request,
                serf_bucket_t *response,
                svn_ra_serf__handler_t *handler,
                apr_status_t *serf_status,
                apr_pool_t *scratch_pool)
{
  apr_status_t status;
  svn_error_t *err;




  *serf_status = APR_SUCCESS;

  if (!response)
    {

      handler->scheduled = FALSE;

      if (handler->response_error)
        {

          SVN_ERR(handler->response_error(request, response, 0,
                                          handler->response_error_baton));

          svn_ra_serf__request_create(handler);
        }



      else if (!handler->reading_body)
        {
          svn_ra_serf__request_create(handler);
        }
      else
        {
          return svn_error_createf(SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
                                    _("%s request on '%s' failed"),
                                   handler->method, handler->path);
        }

      return SVN_NO_ERROR;
    }


  if (handler->reading_body)
    goto process_body;


  if (handler->sline.version == 0)
    {
      serf_status_line sl;

      status = serf_bucket_response_status(response, &sl);
      if (status != APR_SUCCESS)
        {

          *serf_status = status;
          return SVN_NO_ERROR;
        }


      SVN_ERR_ASSERT(sl.version != 0);

      handler->sline = sl;
      handler->sline.reason = apr_pstrdup(handler->handler_pool, sl.reason);


      if (sl.version != SERF_HTTP_10)
        handler->session->http10 = FALSE;

      if (sl.version >= SERF_HTTP_VERSION(2, 0)) {
        handler->session->http20 = TRUE;
      }
    }


  status = serf_bucket_response_wait_for_headers(response);
  if (status)
    {



      if (!APR_STATUS_IS_EOF(status))
        {


          *serf_status = status;
          return SVN_NO_ERROR;
        }
      if (strcmp(handler->method, "HEAD") != 0
          && handler->sline.code != 204
          && handler->sline.code != 304)
        {
          err = svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA,
                                  svn_ra_serf__wrap_err(status, ((void*)0)),
                                  _("Premature EOF seen from server"
                                    " (http status=%d)"),
                                  handler->sline.code);


          handler->discard_body = TRUE;

          return err;
        }
    }


  handler->location = response_get_location(response,
                                            handler->session->session_url_str,
                                            handler->handler_pool,
                                            scratch_pool);



  if (handler->conn->last_status_code == 401 && handler->sline.code < 400)
    {
      SVN_ERR(svn_auth_save_credentials(handler->session->auth_state,
                                        handler->session->pool));
      handler->session->auth_attempts = 0;
      handler->session->auth_state = ((void*)0);
    }
  handler->conn->last_status_code = handler->sline.code;

  if (handler->sline.code >= 400)
    {




      serf_bucket_t *hdrs;
      const char *val;

      hdrs = serf_bucket_response_get_headers(response);
      val = serf_bucket_headers_get(hdrs, "Content-Type");
      if (val && strncasecmp(val, "text/xml", sizeof("text/xml") - 1) == 0)
        {
          svn_ra_serf__server_error_t *server_err;

          SVN_ERR(svn_ra_serf__setup_error_parsing(&server_err, handler,
                                                   FALSE,
                                                   handler->handler_pool,
                                                   handler->handler_pool));

          handler->server_error = server_err;
        }
      else
        {
          handler->discard_body = TRUE;
        }
    }
  else if (handler->sline.code <= 199)
    {
      handler->discard_body = TRUE;
    }


  handler->reading_body = TRUE;

 process_body:


  if (handler->discard_body)
    {
      *serf_status = drain_bucket(response);

      return SVN_NO_ERROR;
    }



  if (handler->server_error != ((void*)0))
    {
      return svn_error_trace(
                svn_ra_serf__handle_server_error(handler->server_error,
                                                 handler,
                                                 request, response,
                                                 serf_status,
                                                 scratch_pool));
    }


  err = handler->response_handler(request, response,
                                  handler->response_baton,
                                  scratch_pool);

  if (err
      && (!SERF_BUCKET_READ_ERROR(err->apr_err)
          || APR_STATUS_IS_ECONNRESET(err->apr_err)
          || APR_STATUS_IS_ECONNABORTED(err->apr_err)))
    {


      *serf_status = err->apr_err;
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }

  return svn_error_trace(err);
}
