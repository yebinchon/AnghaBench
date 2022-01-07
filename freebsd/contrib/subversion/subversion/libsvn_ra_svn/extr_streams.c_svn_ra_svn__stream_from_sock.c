
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_ra_svn__stream_t ;
struct TYPE_5__ {int pool; int * sock; } ;
typedef TYPE_1__ sock_baton_t ;
typedef int apr_socket_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int sock_pending_cb ;
 int sock_read_cb ;
 int sock_timeout_cb ;
 int sock_write_cb ;
 int svn_pool_create (int *) ;
 int * svn_ra_svn__stream_create (int *,int *,TYPE_1__*,int ,int *) ;
 int * svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_data_available (int *,int ) ;
 int svn_stream_set_read2 (int *,int ,int *) ;
 int svn_stream_set_write (int *,int ) ;

svn_ra_svn__stream_t *
svn_ra_svn__stream_from_sock(apr_socket_t *sock,
                             apr_pool_t *result_pool)
{
  sock_baton_t *b = apr_palloc(result_pool, sizeof(*b));
  svn_stream_t *sock_stream;

  b->sock = sock;
  b->pool = svn_pool_create(result_pool);

  sock_stream = svn_stream_create(b, result_pool);

  svn_stream_set_read2(sock_stream, sock_read_cb, ((void*)0) );
  svn_stream_set_write(sock_stream, sock_write_cb);
  svn_stream_set_data_available(sock_stream, sock_pending_cb);

  return svn_ra_svn__stream_create(sock_stream, sock_stream,
                                   b, sock_timeout_cb, result_pool);
}
