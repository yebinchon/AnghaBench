#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_spillbuf_t ;
struct TYPE_3__ {char const* useragent; scalar_t__ http10; int /*<<< orphan*/  using_chunked_requests; } ;
typedef  TYPE_1__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* SVN_DAV_NS_DAV_SVN_DEPTH ; 
 char const* SVN_DAV_NS_DAV_SVN_LOG_REVPROPS ; 
 char const* SVN_DAV_NS_DAV_SVN_MERGEINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(serf_request_t *request,
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
  serf_bucket_alloc_t *allocator = FUNC6(request);

  svn_spillbuf_t *buf;
  svn_boolean_t set_CL = session->http10 || !session->using_chunked_requests;

  if (set_CL && body_bkt != NULL)
    {
      /* Ugh. Use HTTP/1.0 to talk to the server because we don't know if
         it speaks HTTP/1.1 (and thus, chunked requests), or because the
         server actually responded as only supporting HTTP/1.0.

         We'll take the existing body_bkt, spool it into a spillbuf, and
         then wrap a bucket around that spillbuf. The spillbuf will give
         us the Content-Length value.  */
      FUNC0(FUNC7(&buf, body_bkt,
                                              request_pool,
                                              scratch_pool));
      /* Destroy original bucket since it content is already copied
         to spillbuf. */
      FUNC1(body_bkt);

      body_bkt = FUNC8(buf, allocator,
                                               request_pool,
                                               scratch_pool);
    }

  /* Create a request bucket.  Note that this sucker is kind enough to
     add a "Host" header for us.  */
  *req_bkt = FUNC5(request, method, url,
                                                body_bkt, allocator);

  /* Set the Content-Length value. This will also trigger an HTTP/1.0
     request (rather than the default chunked request).  */
  if (set_CL)
    {
      if (body_bkt == NULL)
        FUNC4(*req_bkt, 0);
      else
        FUNC4(*req_bkt, FUNC9(buf));
    }

  *hdrs_bkt = FUNC3(*req_bkt);

  /* We use serf_bucket_headers_setn() because the USERAGENT has a
     lifetime longer than this bucket. Thus, there is no need to copy
     the header values.  */
  FUNC2(*hdrs_bkt, "User-Agent", session->useragent);

  if (content_type)
    {
      FUNC2(*hdrs_bkt, "Content-Type", content_type);
    }

  if (session->http10)
    {
      FUNC2(*hdrs_bkt, "Connection", "keep-alive");
    }

  if (accept_encoding)
    {
      FUNC2(*hdrs_bkt, "Accept-Encoding", accept_encoding);
    }

  /* These headers need to be sent with every request that might need
     capability processing (e.g. during commit, reports, etc.), see
     issue #3255 ("mod_dav_svn does not pass client capabilities to
     start-commit hooks") for why.

     Some request types like GET/HEAD/PROPFIND are unaware of capability
     handling; and in some cases the responses can even be cached by
     proxies, so we don't have to send these hearders there. */
  if (dav_headers)
    {
      FUNC2(*hdrs_bkt, "DAV", SVN_DAV_NS_DAV_SVN_DEPTH);
      FUNC2(*hdrs_bkt, "DAV", SVN_DAV_NS_DAV_SVN_MERGEINFO);
      FUNC2(*hdrs_bkt, "DAV", SVN_DAV_NS_DAV_SVN_LOG_REVPROPS);
    }

  return SVN_NO_ERROR;
}