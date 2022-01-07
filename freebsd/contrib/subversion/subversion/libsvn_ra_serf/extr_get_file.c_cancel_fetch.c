
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {scalar_t__ read_size; scalar_t__ aborted_read_size; scalar_t__ aborted_read; scalar_t__ read_headers; } ;
typedef TYPE_1__ stream_ctx_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;


 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;

__attribute__((used)) static svn_error_t *
cancel_fetch(serf_request_t *request,
             serf_bucket_t *response,
             int status_code,
             void *baton)
{
  stream_ctx_t *fetch_ctx = baton;






  if (!response)
    {




      if (fetch_ctx->read_headers)
        {
          if (!fetch_ctx->aborted_read && fetch_ctx->read_size)
            {
              fetch_ctx->aborted_read = TRUE;
              fetch_ctx->aborted_read_size = fetch_ctx->read_size;
            }
          fetch_ctx->read_size = 0;
        }

      return SVN_NO_ERROR;
    }


  SVN_ERR_MALFUNCTION();
}
