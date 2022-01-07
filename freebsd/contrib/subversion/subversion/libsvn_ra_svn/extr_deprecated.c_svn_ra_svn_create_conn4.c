
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_ra_svn_conn_t ;
typedef int apr_socket_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * svn_ra_svn_create_conn5 (int *,int *,int *,int,int ,int ,int ,int ,int *) ;

svn_ra_svn_conn_t *
svn_ra_svn_create_conn4(apr_socket_t *sock,
                        svn_stream_t *in_stream,
                        svn_stream_t *out_stream,
                        int compression_level,
                        apr_size_t zero_copy_limit,
                        apr_size_t error_check_interval,
                        apr_pool_t *pool)
{
  return svn_ra_svn_create_conn5(sock, in_stream, out_stream,
                                 compression_level, zero_copy_limit,
                                 error_check_interval, 0, 0, pool);
}
