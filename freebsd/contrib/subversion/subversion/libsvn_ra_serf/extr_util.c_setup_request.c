
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int header_delegate_baton; int (* header_delegate ) (int *,int ,int *,int *) ;int no_dav_headers; int body_type; int path; int method; TYPE_2__* session; scalar_t__ custom_accept_encoding; int body_delegate_baton; int (* body_delegate ) (int **,int ,int *,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ using_compression; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * serf_request_get_alloc (int *) ;
 int setup_serf_req (int *,int **,int **,TYPE_2__*,int ,int ,int *,int ,char const*,int,int *,int *) ;
 int stub1 (int **,int ,int *,int *,int *) ;
 int stub2 (int *,int ,int *,int *) ;
 scalar_t__ svn_tristate_false ;

__attribute__((used)) static svn_error_t *
setup_request(serf_request_t *request,
              svn_ra_serf__handler_t *handler,
              serf_bucket_t **req_bkt,
              apr_pool_t *request_pool,
              apr_pool_t *scratch_pool)
{
  serf_bucket_t *body_bkt;
  serf_bucket_t *headers_bkt;
  const char *accept_encoding;

  if (handler->body_delegate)
    {
      serf_bucket_alloc_t *bkt_alloc = serf_request_get_alloc(request);

      SVN_ERR(handler->body_delegate(&body_bkt, handler->body_delegate_baton,
                                     bkt_alloc, request_pool, scratch_pool));
    }
  else
    {
      body_bkt = ((void*)0);
    }

  if (handler->custom_accept_encoding)
    {
      accept_encoding = ((void*)0);
    }
  else if (handler->session->using_compression != svn_tristate_false)
    {

      accept_encoding = "gzip";
    }
  else
    {
      accept_encoding = ((void*)0);
    }

  SVN_ERR(setup_serf_req(request, req_bkt, &headers_bkt,
                         handler->session, handler->method, handler->path,
                         body_bkt, handler->body_type, accept_encoding,
                         !handler->no_dav_headers, request_pool,
                         scratch_pool));

  if (handler->header_delegate)
    {
      SVN_ERR(handler->header_delegate(headers_bkt,
                                       handler->header_delegate_baton,
                                       request_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
