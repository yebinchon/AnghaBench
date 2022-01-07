
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int written_since_error_check; int may_check_for_error; scalar_t__ error_check_interval; int block_baton; int (* block_handler ) (TYPE_1__*,int *,int ) ;int stream; int current_out; TYPE_2__* session; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
struct TYPE_8__ {scalar_t__ bytes_read; scalar_t__ bytes_written; TYPE_3__* callbacks; int callbacks_baton; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_9__ {int progress_baton; int (* progress_func ) (scalar_t__,int,int ,int *) ;int (* cancel_func ) (int ) ;} ;
typedef TYPE_3__ svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_io_limits (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (TYPE_1__*,int *,int ) ;
 int stub3 (scalar_t__,int,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_svn__stream_write (int ,char const*,int*) ;

__attribute__((used)) static svn_error_t *writebuf_output(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                    const char *data, apr_size_t len)
{
  const char *end = data + len;
  apr_size_t count;
  apr_pool_t *subpool = ((void*)0);
  svn_ra_svn__session_baton_t *session = conn->session;




  conn->current_out += len;
  SVN_ERR(check_io_limits(conn));

  while (data < end)
    {
      count = end - data;

      if (session && session->callbacks && session->callbacks->cancel_func)
        SVN_ERR((session->callbacks->cancel_func)(session->callbacks_baton));

      SVN_ERR(svn_ra_svn__stream_write(conn->stream, data, &count));
      if (count == 0)
        {
          if (!subpool)
            subpool = svn_pool_create(pool);
          else
            svn_pool_clear(subpool);
          SVN_ERR(conn->block_handler(conn, subpool, conn->block_baton));
        }
      data += count;

      if (session)
        {
          const svn_ra_callbacks2_t *cb = session->callbacks;
          session->bytes_written += count;

          if (cb && cb->progress_func)
            (cb->progress_func)(session->bytes_written + session->bytes_read,
                                -1, cb->progress_baton, subpool);
        }
    }

  conn->written_since_error_check += len;
  conn->may_check_for_error
    = conn->written_since_error_check >= conn->error_check_interval;

  if (subpool)
    svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
