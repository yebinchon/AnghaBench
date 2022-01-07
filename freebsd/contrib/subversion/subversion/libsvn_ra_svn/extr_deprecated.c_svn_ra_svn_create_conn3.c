
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_ra_svn_conn_t ;
typedef int apr_socket_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int * svn_ra_svn_create_conn4 (int *,int *,int *,int,int ,int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_ra_svn_conn_t *
svn_ra_svn_create_conn3(apr_socket_t *sock,
                        apr_file_t *in_file,
                        apr_file_t *out_file,
                        int compression_level,
                        apr_size_t zero_copy_limit,
                        apr_size_t error_check_interval,
                        apr_pool_t *pool)
{
  svn_stream_t *in_stream = ((void*)0);
  svn_stream_t *out_stream = ((void*)0);

  if (in_file)
    in_stream = svn_stream_from_aprfile2(in_file, FALSE, pool);
  if (out_file)
    out_stream = svn_stream_from_aprfile2(out_file, FALSE, pool);

  return svn_ra_svn_create_conn4(sock, in_stream, out_stream,
                                 compression_level, zero_copy_limit,
                                 error_check_interval, pool);
}
