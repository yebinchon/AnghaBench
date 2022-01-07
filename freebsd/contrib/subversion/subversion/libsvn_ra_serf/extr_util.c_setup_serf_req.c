
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_spillbuf_t ;
struct TYPE_3__ {char const* useragent; scalar_t__ http10; int using_chunked_requests; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 char const* SVN_DAV_NS_DAV_SVN_DEPTH ;
 char const* SVN_DAV_NS_DAV_SVN_LOG_REVPROPS ;
 char const* SVN_DAV_NS_DAV_SVN_MERGEINFO ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int serf_bucket_destroy (int *) ;
 int serf_bucket_headers_setn (int *,char*,char const*) ;
 int * serf_bucket_request_get_headers (int *) ;
 int serf_bucket_request_set_CL (int *,int ) ;
 int * serf_request_bucket_request_create (int *,char const*,char const*,int *,int *) ;
 int * serf_request_get_alloc (int *) ;
 int svn_ra_serf__copy_into_spillbuf (int **,int *,int *,int *) ;
 int * svn_ra_serf__create_sb_bucket (int *,int *,int *,int *) ;
 int svn_spillbuf__get_size (int *) ;

__attribute__((used)) static svn_error_t *
setup_serf_req(serf_request_t *request,
               serf_bucket_t **req_bkt,
               serf_bucket_t **hdrs_bkt,
               svn_ra_serf__session_t *session,
               const char *method, const char *url,
               serf_bucket_t *body_bkt, const char *content_type,
               const char *accept_encoding,
               svn_boolean_t dav_headers,
               apr_pool_t *request_pool,
               apr_pool_t *scratch_pool)
{
  serf_bucket_alloc_t *allocator = serf_request_get_alloc(request);

  svn_spillbuf_t *buf;
  svn_boolean_t set_CL = session->http10 || !session->using_chunked_requests;

  if (set_CL && body_bkt != ((void*)0))
    {







      SVN_ERR(svn_ra_serf__copy_into_spillbuf(&buf, body_bkt,
                                              request_pool,
                                              scratch_pool));


      serf_bucket_destroy(body_bkt);

      body_bkt = svn_ra_serf__create_sb_bucket(buf, allocator,
                                               request_pool,
                                               scratch_pool);
    }



  *req_bkt = serf_request_bucket_request_create(request, method, url,
                                                body_bkt, allocator);



  if (set_CL)
    {
      if (body_bkt == ((void*)0))
        serf_bucket_request_set_CL(*req_bkt, 0);
      else
        serf_bucket_request_set_CL(*req_bkt, svn_spillbuf__get_size(buf));
    }

  *hdrs_bkt = serf_bucket_request_get_headers(*req_bkt);




  serf_bucket_headers_setn(*hdrs_bkt, "User-Agent", session->useragent);

  if (content_type)
    {
      serf_bucket_headers_setn(*hdrs_bkt, "Content-Type", content_type);
    }

  if (session->http10)
    {
      serf_bucket_headers_setn(*hdrs_bkt, "Connection", "keep-alive");
    }

  if (accept_encoding)
    {
      serf_bucket_headers_setn(*hdrs_bkt, "Accept-Encoding", accept_encoding);
    }
  if (dav_headers)
    {
      serf_bucket_headers_setn(*hdrs_bkt, "DAV", SVN_DAV_NS_DAV_SVN_DEPTH);
      serf_bucket_headers_setn(*hdrs_bkt, "DAV", SVN_DAV_NS_DAV_SVN_MERGEINFO);
      serf_bucket_headers_setn(*hdrs_bkt, "DAV", SVN_DAV_NS_DAV_SVN_LOG_REVPROPS);
    }

  return SVN_NO_ERROR;
}
