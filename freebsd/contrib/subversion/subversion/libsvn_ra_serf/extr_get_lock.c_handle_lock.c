
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
struct TYPE_4__ {int inner_baton; int * (* inner_handler ) (int *,int *,int ,int *) ;scalar_t__ read_headers; int pool; TYPE_1__* lock; } ;
typedef TYPE_2__ lock_info_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int creation_date; int owner; } ;


 int SVN_DAV_CREATIONDATE_HEADER ;
 int SVN_DAV_LOCK_OWNER_HEADER ;
 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 int apr_pstrdup (int ,char const*) ;
 char* serf_bucket_headers_get (int *,int ) ;
 int * serf_bucket_response_get_headers (int *) ;
 int * stub1 (int *,int *,int ,int *) ;
 int svn_time_from_cstring (int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
handle_lock(serf_request_t *request,
            serf_bucket_t *response,
            void *handler_baton,
            apr_pool_t *pool)
{
  lock_info_t *ctx = handler_baton;

  if (!ctx->read_headers)
    {
      serf_bucket_t *headers;
      const char *val;

      headers = serf_bucket_response_get_headers(response);

      val = serf_bucket_headers_get(headers, SVN_DAV_LOCK_OWNER_HEADER);
      if (val)
        {
          ctx->lock->owner = apr_pstrdup(ctx->pool, val);
        }

      val = serf_bucket_headers_get(headers, SVN_DAV_CREATIONDATE_HEADER);
      if (val)
        {
          SVN_ERR(svn_time_from_cstring(&ctx->lock->creation_date, val,
                                        ctx->pool));
        }

      ctx->read_headers = TRUE;
    }

  return ctx->inner_handler(request, response, ctx->inner_baton, pool);
}
