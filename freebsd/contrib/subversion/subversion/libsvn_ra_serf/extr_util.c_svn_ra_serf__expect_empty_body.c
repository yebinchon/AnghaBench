
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_serf__server_error_t ;
struct TYPE_4__ {int code; } ;
struct TYPE_5__ {int discard_body; int * server_error; int handler_pool; TYPE_1__ sline; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* serf_bucket_headers_get (int *,char*) ;
 int * serf_bucket_response_get_headers (int *) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int svn_ra_serf__setup_error_parsing (int **,TYPE_2__*,int ,int ,int ) ;

svn_error_t *
svn_ra_serf__expect_empty_body(serf_request_t *request,
                               serf_bucket_t *response,
                               void *baton,
                               apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler = baton;
  serf_bucket_t *hdrs;
  const char *val;
  SVN_ERR_ASSERT(handler->server_error == ((void*)0));

  hdrs = serf_bucket_response_get_headers(response);
  val = serf_bucket_headers_get(hdrs, "Content-Type");
  if (val
      && (handler->sline.code < 200 || handler->sline.code >= 300)
      && strncasecmp(val, "text/xml", sizeof("text/xml") - 1) == 0)
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




  return SVN_NO_ERROR;
}
