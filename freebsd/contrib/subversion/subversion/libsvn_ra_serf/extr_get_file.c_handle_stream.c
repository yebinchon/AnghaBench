
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ read_size; scalar_t__ aborted_read_size; int result_stream; scalar_t__ aborted_read; TYPE_3__* handler; } ;
typedef TYPE_2__ stream_ctx_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_4__ {int code; } ;
struct TYPE_6__ {TYPE_1__ sline; } ;


 scalar_t__ APR_STATUS_IS_EAGAIN (int ) ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ SERF_BUCKET_READ_ERROR (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int serf_bucket_read (int *,int,char const**,scalar_t__*) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int * svn_ra_serf__wrap_err (int ,int *) ;
 int svn_stream_write (int ,char const*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
handle_stream(serf_request_t *request,
              serf_bucket_t *response,
              void *handler_baton,
              apr_pool_t *pool)
{
  stream_ctx_t *fetch_ctx = handler_baton;
  apr_status_t status;

  if (fetch_ctx->handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(fetch_ctx->handler));

  while (1)
    {
      const char *data;
      apr_size_t len;

      status = serf_bucket_read(response, 8000, &data, &len);
      if (SERF_BUCKET_READ_ERROR(status))
        {
          return svn_ra_serf__wrap_err(status, ((void*)0));
        }

      fetch_ctx->read_size += len;

      if (fetch_ctx->aborted_read)
        {
          apr_off_t skip;


          if (fetch_ctx->read_size < fetch_ctx->aborted_read_size)
            {

              if (APR_STATUS_IS_EOF(status))
                {
                  SVN_ERR_MALFUNCTION();
                }


              if (APR_STATUS_IS_EAGAIN(status))
                {
                  return svn_ra_serf__wrap_err(status, ((void*)0));
                }
              continue;
            }


          fetch_ctx->aborted_read = FALSE;


          skip = len - (fetch_ctx->read_size - fetch_ctx->aborted_read_size);
          data += skip;
          len -= (apr_size_t)skip;
        }

      if (len)
        {
          apr_size_t written_len;

          written_len = len;

          SVN_ERR(svn_stream_write(fetch_ctx->result_stream, data,
                                   &written_len));
        }

      if (status)
        {
          return svn_ra_serf__wrap_err(status, ((void*)0));
        }
    }

}
