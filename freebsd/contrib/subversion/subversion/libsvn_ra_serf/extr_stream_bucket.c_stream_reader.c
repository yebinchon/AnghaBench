
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int stream; int errfunc_baton; int (* errfunc ) (int ,int *) ;} ;
typedef TYPE_1__ stream_bucket_ctx_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 int SVN_ERR_RA_SERF_STREAM_BUCKET_READ_ERROR ;
 int stub1 (int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_stream_close (int ) ;
 int * svn_stream_read_full (int ,char*,scalar_t__*) ;

__attribute__((used)) static apr_status_t
stream_reader(void *baton, apr_size_t bufsize, char *buf, apr_size_t *len)
{
  stream_bucket_ctx_t *ctx = baton;
  svn_error_t *err;

  *len = bufsize;

  err = svn_stream_read_full(ctx->stream, buf, len);
  if (err)
    {
      if (ctx->errfunc)
        ctx->errfunc(ctx->errfunc_baton, err);
      svn_error_clear(err);

      return SVN_ERR_RA_SERF_STREAM_BUCKET_READ_ERROR;
    }

  if (*len == bufsize)
    {
      return APR_SUCCESS;
    }
  else
    {
      svn_error_clear(svn_stream_close(ctx->stream));
      return APR_EOF;
    }
}
