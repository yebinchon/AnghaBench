
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_4__ {int may_check_for_error; int compression_level; int * remote_ip; int stream; int * pool; scalar_t__ zero_copy_limit; int capabilities; int * block_baton; int * block_handler; scalar_t__ current_out; void* max_out; scalar_t__ current_in; void* max_in; scalar_t__ error_check_interval; scalar_t__ written_since_error_check; scalar_t__ write_pos; int read_buf; int read_end; int read_ptr; int * session; int encrypted; int * sock; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int apr_uintptr_t ;
typedef void* apr_uint64_t ;
typedef int apr_socket_t ;
typedef int apr_sockaddr_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_ALIGN (int ,scalar_t__) ;
 int APR_REMOTE ;
 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 scalar_t__ SVN_RA_SVN__PAGE_SIZE ;
 int apr_hash_make (int *) ;
 void* apr_palloc (int *,scalar_t__) ;
 scalar_t__ apr_sockaddr_ip_get (int **,int *) ;
 scalar_t__ apr_socket_addr_get (int **,int ,int *) ;
 int assert (int) ;
 int get_timeout (TYPE_1__*) ;
 int svn_ra_svn__stream_from_sock (int *,int *) ;
 int svn_ra_svn__stream_from_streams (int *,int *,int *) ;
 int svn_ra_svn__stream_timeout (int ,int ) ;

svn_ra_svn_conn_t *svn_ra_svn_create_conn5(apr_socket_t *sock,
                                           svn_stream_t *in_stream,
                                           svn_stream_t *out_stream,
                                           int compression_level,
                                           apr_size_t zero_copy_limit,
                                           apr_size_t error_check_interval,
                                           apr_uint64_t max_in,
                                           apr_uint64_t max_out,
                                           apr_pool_t *result_pool)
{
  svn_ra_svn_conn_t *conn;
  void *mem = apr_palloc(result_pool, sizeof(*conn) + SVN_RA_SVN__PAGE_SIZE);
  conn = (void*)APR_ALIGN((apr_uintptr_t)mem, SVN_RA_SVN__PAGE_SIZE);

  assert((sock && !in_stream && !out_stream)
         || (!sock && in_stream && out_stream));




  conn->session = ((void*)0);
  conn->read_ptr = conn->read_buf;
  conn->read_end = conn->read_buf;
  conn->write_pos = 0;
  conn->written_since_error_check = 0;
  conn->error_check_interval = error_check_interval;
  conn->may_check_for_error = error_check_interval == 0;
  conn->max_in = max_in;
  conn->current_in = 0;
  conn->max_out = max_out;
  conn->current_out = 0;
  conn->block_handler = ((void*)0);
  conn->block_baton = ((void*)0);
  conn->capabilities = apr_hash_make(result_pool);
  conn->compression_level = compression_level;
  conn->zero_copy_limit = zero_copy_limit;
  conn->pool = result_pool;

  if (sock != ((void*)0))
    {
      apr_sockaddr_t *sa;
      conn->stream = svn_ra_svn__stream_from_sock(sock, result_pool);
      if (!(apr_socket_addr_get(&sa, APR_REMOTE, sock) == APR_SUCCESS
            && apr_sockaddr_ip_get(&conn->remote_ip, sa) == APR_SUCCESS))
        conn->remote_ip = ((void*)0);
      svn_ra_svn__stream_timeout(conn->stream, get_timeout(conn));
    }
  else
    {
      conn->stream = svn_ra_svn__stream_from_streams(in_stream, out_stream,
                                                     result_pool);
      conn->remote_ip = ((void*)0);
    }

  return conn;
}
