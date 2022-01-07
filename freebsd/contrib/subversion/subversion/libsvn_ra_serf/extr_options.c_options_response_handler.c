
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conn_latency; int capabilities; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_connection_t ;
typedef int serf_bucket_t ;
struct TYPE_5__ {int inner_baton; int * (* inner_handler ) (int *,int *,int ,int *) ;scalar_t__ headers_processed; TYPE_1__* session; } ;
typedef TYPE_2__ options_context_t ;
typedef int apr_pool_t ;


 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int SVN_RA_CAPABILITY_DEPTH ;
 int SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS ;
 int SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE ;
 int SVN_RA_CAPABILITY_INHERITED_PROPS ;
 int SVN_RA_CAPABILITY_LIST ;
 int SVN_RA_CAPABILITY_LOG_REVPROPS ;
 int SVN_RA_CAPABILITY_MERGEINFO ;
 int SVN_RA_CAPABILITY_PARTIAL_REPLAY ;
 scalar_t__ TRUE ;
 int capabilities_headers_iterator_callback ;
 int * capability_no ;
 int serf_bucket_headers_do (int *,int ,TYPE_2__*) ;
 int * serf_bucket_response_get_headers (int *) ;
 int serf_connection_get_latency (int *) ;
 int * serf_request_get_conn (int *) ;
 int * stub1 (int *,int *,int ,int *) ;
 int svn_hash_gets (int ,int ) ;
 int svn_hash_sets (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
options_response_handler(serf_request_t *request,
                         serf_bucket_t *response,
                         void *baton,
                         apr_pool_t *pool)
{
  options_context_t *opt_ctx = baton;

  if (!opt_ctx->headers_processed)
    {
      svn_ra_serf__session_t *session = opt_ctx->session;
      serf_bucket_t *hdrs = serf_bucket_response_get_headers(response);
      serf_connection_t *conn;


      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_PARTIAL_REPLAY,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_DEPTH,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_MERGEINFO,
                    ((void*)0));
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_LOG_REVPROPS,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_INHERITED_PROPS,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE,
                    capability_no);
      svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_LIST,
                    capability_no);


      serf_bucket_headers_do(hdrs, capabilities_headers_iterator_callback,
                             opt_ctx);



      if (!svn_hash_gets(session->capabilities, SVN_RA_CAPABILITY_MERGEINFO))
        svn_hash_sets(session->capabilities, SVN_RA_CAPABILITY_MERGEINFO,
                      capability_no);


      conn = serf_request_get_conn(request);
      session->conn_latency = serf_connection_get_latency(conn);

      opt_ctx->headers_processed = TRUE;
    }


  return opt_ctx->inner_handler(request, response, opt_ctx->inner_baton, pool);
}
